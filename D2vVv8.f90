module PowerSetModule_EnJnDeSIgn2024_D2vVv8
    implicit none
contains
    subroutine PowerSET_EnJnDeSIgn2024(set, n, subsets)
        integer, intent(in) :: set(:)
        integer, intent(in) :: n
		integer, allocatable, intent(out) :: subsets(:, :)
        integer :: i, subset, total_subsets

        ! Calculate total number of subsets (2^n)
        total_subsets = 2**n
        !print *, "The power set has ", total_subsets, " subsets."

		! Allocate array to store subsets
        allocate(subsets(total_subsets, n))
		! Generate each subset
        do subset = 0, total_subsets - 1
            do i = 1, n
                if (btest(subset, i-1)) then
                    subsets(subset + 1, i) = set(i)
                else
                    subsets(subset + 1, i) = 0
                end if
            end do
        end do
    end subroutine PowerSET_EnJnDeSIgn2024
end module PowerSetModule_EnJnDeSIgn2024_D2vVv8
program D2vVv8_roller_EnJnDeSIgn2024
	! Turning this into a real program to adding rand selected and make more Quantum, Thank you Copilot!
	use PowerSetModule_EnJnDeSIgn2024_D2vVv8
    implicit none
    integer :: selected_group, selected_number, i, j, k, roll_count, num_iterations, count, max_digit, max_digit_count
	integer :: selected_place, line_index, position_index, random_select_value, random_select, m
    character(len=4), dimension(0:9, 0:9) :: groups
    character(len=4), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
    character(len=1), dimension(30) :: selected_numbers
    integer, dimension(30) :: final_numbers, digit_count, digit_sum
	character(len=50) :: most_frequent_digits
    real :: rand, c, y, t, carry_over, mean, sum_squares, std_dev, max_value, random_val0, exponent, mu, sigma, x, pdf, sum, sum_sq
    character(len=30) :: random_number_str
    real(kind=8) :: total_sum, current_number
	real, dimension(25) :: run_totals, normalized_run_totals, rand_exponent
	integer, dimension(5) :: base_set
    integer :: n, total_subsets, total_digit_sum
	integer, allocatable :: subsets(:, :)
    integer, dimension(:), allocatable :: seed
	
	! Constants
    real, parameter :: pi = 3.14159
    real, parameter :: e = 2.71828
	
	c = 0.0
	count = 0

    call random_seed()
    roll_count = 30
    num_iterations = 25  ! Number of times to repeat the process
    total_sum = 0
	carry_over = 0.0
	digit_count = 0
	! Define the base set for the power set generation
	n = 5  ! Number of values (0-4)
	base_set = [0, 1, 2, 3, 4]

    ! Call the subroutine to generate and print the power set
    call PowerSET_EnJnDeSIgn2024(base_set, n, subsets)
	
	! Create a seed array from some elements of the power set
    total_subsets = size(subsets, 1)
    allocate(seed(1:total_subsets))
	! Generate a random number and use multiple modulo bases, working v1, probably harder numbers
	! Generate seed values within 0-4
	do i = 1, n
		seed(i) = 0
		call random_number(rand)
		seed(i) = mod(int(rand * 5), 5)
		! Ensure within 0-4 range
		!if (seed(i) > 4 .or. seed(i) < 0) then
			!seed(i) = 0
		!end if
	end do

	! More variation for the seed !!!!
	!do j = 1, 9
		!call random_number(rand)
		!seed(i) = seed(i) + mod(int(rand * 5), 5)
		!print *, 'Seed (extended):', j, seed(i)  ! Debug print
	!end do
		!seed(i) = mod(seed(i), 5)
		!print *, 'Final Seed:', seed(i)  ! Debug print
	
	! Set the random seed with the generated seed array
    call random_seed(put=seed)

    ! Initialize group arrays (same as before)
    group0 = (/ "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "1  " /)
    group1 = (/ "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  " /)
    group2 = (/ "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "1  ", "1  ", "1  " /)
    group3 = (/ "0  ", "1  ", "1  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  " /)
    group4 = (/ "0  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  " /)
    group5 = (/ "0  ", "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    group6 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  " /)
    group7 = (/ "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  " /)
    group8 = (/ "1  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "0  " /)
    group9 = (/ "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  "/)
    groups(0,:) = group0; groups(1,:) = group1; groups(2,:) = group2; groups(3,:) = group3; groups(4,:) = group4
    groups(5,:) = group5; groups(6,:) = group6; groups(7,:) = group7; groups(8,:) = group8; groups(9,:) = group9

    do j = 1, num_iterations
		!print *, 'Iteration:', j  ! Debug print
        random_number_str = ""
		count = count +1
        do i = 1, roll_count
			!print *, 'Roll count:', i  ! Debug print
			most_frequent_digits = ""
			! Quantum Version 1.1
			! Randomly select a group using power set
			call random_number(rand)
			selected_group = seed(int(rand * 5) + 1)
			if (selected_group > 4 .or. selected_group < 0) then
				print *, "Error: selected_group Call!!!! out of range"
				stop
			end if

			! Adjusting to fit within 0-4 or 5-9
			if (selected_group <= total_subsets / 2) then
				selected_group = mod(seed(i) + int(rand * 5), 5)			! 0-4
			else
				selected_group = mod(seed(i) + int(rand * 5), 5) + 5		! 5-9
			end if

			if (selected_group < 0 .or. selected_group > 9) then
				print *, "Error: selected_group out of range"
				stop
			end if
			! Quantum Testing Syntax
			!if (selected_group == 9) then
				!print *, "Working Group9!"
			!end if
			!if (selected_group == 8) then
				!print *, "Working Group8!"
			!end if
			!if (selected_group == 7) then
				!print *, "Working Group7!"
			!end if
			!if (selected_group == 6) then
				!print *, "Working Group6!"
			!end if
			!if (selected_group == 5) then
				!print *, "Working Group5!"
			!end if
			!if (selected_group == 4) then
				!print *, "Working Group4!"
			!end if
			!if (selected_group == 3) then
				!print *, "Working Group3!"
			!end if
			!if (selected_group == 2) then
				!print *, "Working Group2!"
			!end if
			!if (selected_group == 1) then
				!print *, "Working Group1!"
			!end if
			!if (selected_group == 0) then
				!print *, "Working Group0!"
			!end if
			! Randomly select a number using power set
			call random_number(rand)
			selected_number = seed(int(rand * 5) + 1)
			if (selected_number > 4 .or. selected_number < 0) then
				print *, "Error: selected_number Call!!!! out of range"
				stop
			end if

			! Adjusting to fit within 0-4 or 5-9
			if (selected_number <= total_subsets / 2) then
				selected_number = mod(seed(i) + int(rand * 5), 5)			! 0-4
			else
				selected_number = mod(seed(i) + int(rand * 5), 5) + 5		! 5-9
			end if

			if (selected_number < 0 .or. selected_number > 9) then
				print *, "Error: selected_number out of range"
				stop
			end if
			! Quantum Testing Syntax
			!if (selected_number == 9) then
				!print *, "Working Number9!"
			!end if
			!if (selected_number == 8) then
				!print *, "Working Number8!"
			!end if
			!if (selected_number == 7) then
				!print *, "Working Number7!"
			!end if
			!if (selected_number == 6) then
				!print *, "Working Number6!"
			!end if
			!if (selected_number == 5) then
				!print *, "Working Number5!"
			!end if
			!if (selected_number == 4) then
				!print *, "Working Number4!"
			!end if
			!if (selected_number == 3) then
				!print *, "Working Number3!"
			!end if
			!if (selected_number == 2) then
				!print *, "Working Number2!"
			!end if
			!if (selected_number == 1) then
				!print *, "Working Number1!"
			!end if
			!if (selected_number == 0) then
				!print *, "Working Number0!"
			!end if
            ! Store selected number
            selected_numbers(i) = trim(adjustl(groups(selected_group, selected_number)))
            ! Convert binary values to their respective ranges
			if (selected_numbers(i) == '0') then
				call random_number(rand)
				final_numbers(i) = mod(seed(i) + int(rand * 5), 5)  ! Values 0-4
			else if (selected_numbers(i) == '1') then
				call random_number(rand)
				final_numbers(i) = 5 + mod(seed(i) + int(rand * 5), 5)  ! Values 5-9
			end if
            ! Append number to string
			do k = 1, roll_count  ! Ensure this loop is within the correct bounds
				write(random_number_str(k:k), '(I1)') final_numbers(k)
			end do
			! Ensure the string is trimmed and adjusted
			! After processing each roll !!!!
			random_number_str = trim(adjustl(random_number_str))
			!print *, 'Random Number String:', trim(random_number_str)  ! Debug print
			! Convert string to integer safely
			read(random_number_str, '(A90)') current_number
			!print *, 'Current Number:', current_number  ! Debug print
		end do
		! Check length and contents !!!!
		!print *, 'Length:', len_trim(random_number_str)
		!do i = 1, len_trim(random_number_str)
			!print *, i, random_number_str(i:i)
		!end do
        ! Add to total sum
		carry_over = carry_over + current_number
		
		y = current_number - c		! So far, so good: c is 0
		t = total_sum + y			! Alas, sum is big, y small, so low-order digits of y are lost.
		c = (t - total_sum) - y		! (t- total_sum) recovers the high part of y; subtracting y recovers -(low part of y)
		total_sum = t				! Algebraically, c should always be zero. Beware overly-aggressive optimizing compilers!
									! Next time around, the lost low part will be added to y in a fresh attempt.
									! Print the current roll value and the total sum with more decimal places	
		total_sum = total_sum + carry_over
		carry_over = 0.0
		
		! Store current total to array
        run_totals(j) = total_sum
		
        ! Count digits
        do m = 1, roll_count
            digit_sum(final_numbers(m) + 1) = digit_sum(final_numbers(m) + 1) + 1
        end do

        ! Print the generated number
        print *, random_number_str
    end do
		! Normalize the values in run_total
		max_value = maxval(run_totals)
		if (max_value > 0.0) then
			normalized_run_totals = run_totals / max_value
		else
			normalized_run_totals = run_totals
		end if
		! Calculate mean
		mean = sum(normalized_run_totals) / count

		! Calculate sum of squares for standard deviation
		sum_squares = 0.0
		do j = 1, count
			sum_squares = sum_squares + (normalized_run_totals(j) - mean)**2
		end do

		if (count > 1) then
			std_dev = sqrt(sum_squares / (count - 1))
		else
			std_dev = 0.0
		end if
	
		! Find the mode(s) (most frequent digit)
		max_digit = 0
		! Count digits
		do j = 1, num_iterations
			do m = 1, roll_count
				digit_count(final_numbers(m) + 1) = digit_count(final_numbers(m) + 1) + 1
			end do
		end do
    ! Print the total sum in scientific notation
    print *, "Total sum (in scientific notation): ", total_sum
	
		call random_number(rand)
		rand_exponent = rand * 1e30
		
		call random_number(rand)
		exponent = 10**(int(rand * 32))
		
		rand_exponent = rand_exponent * exponent
		
			call random_number(rand)
			random_val0 = (rand * 2)
					if (random_val0 == 0) then
					exponent = total_sum * exponent		! If You Want + Exponent's use this one. 0
					else
					exponent = exponent * total_sum		! This one's for - Exponent's. 1
					end if
		!print *, exponent	! Step to get call exponent working
		!print '("Call", E35.25)', exponent	!moved down
    ! Print the mean
    print *, "Mean: ", mean	
			if (std_dev > 1.0e30) then
				print *, "Standard Dev A: Value Too Large To Display"
	else
	print *, "Standard Deviation: ", std_dev
			end if
    ! Print the most frequent digit(not sure if needed still but here in case)
	max_digit = max_digit - 1
	!print *, "Most Frequent Digit: ", max_digit
	! Find the mode(s)
	max_digit_count = maxval(digit_count)
	do m = 0, 9
		if (digit_count(m + 1) == max_digit_count) then
			write(most_frequent_digits(len_trim(most_frequent_digits)+1:len_trim(most_frequent_digits)+1), '(I1)') m
		end if
	end do
	! Print all most frequent digits
	if (len_trim(most_frequent_digits) > 1) then
		print *, "Most Frequent Digit(s): ", most_frequent_digits
	else
		print *, "Most Frequent Digit: ", most_frequent_digits
	end if
			! Randomly select a place in the 25 lines of 30 numbers
		call random_number(rand)
		selected_place = int(rand * 750) + 1  ! Ensures the value is between 1 and 750

		! Calculate the index for the line and position
		line_index = (selected_place - 1) / 30 + 1
		position_index = mod((selected_place - 1), 30) + 1

		! Get the value from the selected position
		random_select_value = final_numbers(position_index)
		random_select = random_select_value

		! Adjust random_select to be in the range 0-9
		random_select = mod(random_select, 10)	! Note It is not a 12 sided D&D Die

		print *, "Random Select: ", random_select
		print '("Random Exponent:", E35.25)', exponent
		! Calculate total digit sum
		total_digit_sum = 0
		do m = 1, 10 ! Count digits from 0-9
			total_digit_sum = total_digit_sum + digit_sum(m)
		end do
		! Calculate mean (mu)
		total_digit_sum = 0.0
		do m = 1, 10
			total_digit_sum = total_digit_sum + digit_sum(m)
		end do
		mu = total_digit_sum / 10

		! Calculate standard deviation (sigma)
		sum_sq = 0.0
		do m = 1, 10
			sum_sq = sum_sq + (digit_sum(m) - mu)**2
		end do
		sigma = sqrt(sum_sq / (10 - 1))

		! Output mean and standard deviation
		print *, "Mean (mu): ", mu
		print *, "Standard Deviation (sigma): ", sigma
		! Assuming mean (mu) and standard deviation (sigma) are already calculated
		do m = 0, 9
			x = digit_sum(m + 1)		! Get count for digit (m + 1 to match 1-based index)
			if (sigma > 0.0) then
				pdf = (1.0 / (sigma * sqrt(2.0 * pi))) * exp(-0.5 * ((x - mean) / sigma)**2)
				print *, "Digit =", m, ", Count =", x, ", PDF Value =", pdf
			else
				print *, "Digit =", m, ", Count =", x, ", PDF Value = Undefined (Sigma is zero)"
			end if
		end do
end program D2vVv8_roller_EnJnDeSIgn2024