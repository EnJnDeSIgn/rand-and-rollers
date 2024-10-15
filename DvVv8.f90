program DvVv8_roller_EnJnDeSIgn2024
	! Turning this into a real program to adding rand selected and make more Quantum, Thank you Copilot!
    implicit none
    integer :: selected_group, selected_number, i, j, k, roll_count, num_iterations, count, max_digit, max_digit_count
	integer :: selected_place, line_index, position_index, d12_value, d12
    character(len=4), dimension(0:9, 0:9) :: groups
    character(len=4), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
    character(len=1), dimension(30) :: selected_numbers
    integer, dimension(30) :: final_numbers, digit_count
	character(len=50) :: most_frequent_digits
	!integer, dimension(10) :: digit_count	! I Think it behaves better on 30
    real :: rand, c, y, t, carry_over, mean, sum_squares, std_dev, max_value, random_val0, random_val1, exponent, random_val2, random_val3
    character(len=30) :: random_number_str
    real(kind=8) :: total_sum, current_number
	real, dimension(25) :: run_totals, normalized_run_totals, rand_exponate
	
	
	c = 0.0
	count = 0

    call random_seed()
    roll_count = 30
    num_iterations = 25  ! Number of times to repeat the process
    total_sum = 0
	carry_over = 0.0
	digit_count = 0

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
        random_number_str = ""
		!run_totals(j) = total_sum
		count = count +1
        do i = 1, roll_count
			most_frequent_digits = ""
            ! Quantum Version 1.0
			call random_number(rand)
			random_val0 = int(rand * 2)
			if (random_val0 == 0) then
			! Randomly select a group
			call random_number(rand)
			selected_group = int(rand * 5)	!0-4
			else if (random_val0 == 1) then
			Call random_number(rand)
			selected_group = int(rand * 5) + 5	!5-9
			end if
			if (selected_group < 0 .or. selected_group > 9) then
					print *, "Error: selected_group out of range"
					stop
			end if
				!if (selected_group < 9) then
					!print *, "Working Group!"
					!stop
				!end if
			call random_number(rand)
			random_val1 = int(rand * 2)
			if (random_val1 == 0) then
            ! Randomly select a number from the chosen group
			call random_number(rand)
			selected_number = int(rand * 5)			!0-4
			else if (random_val1 == 1) then
			Call random_number(rand)
			selected_number = int(rand * 5) + 5		!0-5
			end if
				if (selected_number < 0 .or. selected_number > 9) then
					print *, "Error: selected_number out of range"
					stop
				end if
				!if (selected_number < 9) then
					!print *, "Working Number!"
					!stop
				!end if
            ! Store selected number
            selected_numbers(i) = trim(adjustl(groups(selected_group, selected_number)))
            ! Convert binary values to their respective ranges
            if (selected_numbers(i) == '0') then
                call random_number(rand)
                final_numbers(i) = int(rand * 5)	! Values 0-4
            else if (selected_numbers(i) == '1') then
                call random_number(rand)
                final_numbers(i) = int(rand * 5)  + 5	! Values 0-4
            end if
            ! Append number to string
            write(random_number_str(i:i), '(I1)') final_numbers(i)
        end do

        ! Convert string to integer
        read(random_number_str, '(E30.0)') current_number
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
        do k = 1, roll_count
            digit_count(final_numbers(k) + 1) = digit_count(final_numbers(k) + 1) + 1
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
			do k = 1, roll_count
				digit_count(final_numbers(k) + 1) = digit_count(final_numbers(k) + 1) + 1
			end do
		end do
    ! Print the total sum in scientific notation
    print *, "Total sum (in scientific notation): ", total_sum
		call random_number(rand)
		rand_exponate = (rand * 1.0e30)
		rand_exponate = exponent
		exponent = exponent * 10**(int(rand * 32))
			call random_number(rand)
			random_val2 = (rand * 2)
			if (random_val2 == 0) then
				exponent = total_sum / exponent		! If You Want + Exponent's use this one. 0
					!if (exponent < 1.0e30) then
					!random_val2 = 1
					!end if
			else if (random_val2 == 1) then
				exponent = exponent / total_sum		! This one's for - Exponent's. 1
					!if (exponent > 1.0e30) then
					!random_val2 = 0
					!end if
			end if
		!print *, exponate	! Step to get call exponate working
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
	do k = 0, 9
		if (digit_count(k + 1) == max_digit_count) then
			write(most_frequent_digits(len_trim(most_frequent_digits)+1:len_trim(most_frequent_digits)+1), '(I1)') k
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
		d12_value = final_numbers(position_index)
		d12 = d12_value

		! Adjust d12 to be in the range 1-12 NOT!!!!
		d12 = mod(d12, 10)	! Note It is not a 12 sided D&D Die

		print *, "Random Select: ", d12
		print '("Random Exponent:", E35.25)', exponent
end program DvVv8_roller_EnJnDeSIgn2024