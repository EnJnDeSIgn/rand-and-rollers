program Die100_roller_EnJnDeSIgn2024
	! Testing as Dt4.exe
    implicit none
    integer :: selected_group, selected_number, i, j, k, roll_count, num_iterations, count, max_digit, max_digit_count
	integer :: selected_place, line_index, position_index, d100_value, d100
    character(len=4), dimension(0:9, 0:9) :: groups
    character(len=4), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
    character(len=1), dimension(30) :: selected_numbers
	character(len=150) :: most_frequent_digits
    integer, dimension(90) :: final_numbers, digit_count
    real :: rand, c, y, t, carry_over, mean, sum_squares, std_dev, max_value, random_val0, random_val1, random_val2, random_val3
    character(len=90) :: random_number_str
    real(kind=8) :: total_sum, current_number
	real, dimension(500) :: run_totals, normalized_run_totals
	
	c = 0.0
	count = 0

    call random_seed()
    roll_count = 30
    num_iterations = 500  ! Number of times to repeat the process
    total_sum = 0
	carry_over = 0.0
	digit_count = 0

    ! Initialize group arrays (same as before)
    group0 = (/ "0  ", "0  ", "1  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "1  " /)
    group1 = (/ "1  ", "0  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  ", "1  " /)
    group2 = (/ "1  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "0  ", "1  " /)
    group3 = (/ "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  " /)
    group4 = (/ "1  ", "0  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  " /)
    group5 = (/ "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  " /)
    group6 = (/ "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  " /)
    group7 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    group8 = (/ "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  " /)
    group9 = (/ "1  ", "0  ", "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  "/)
    groups(0,:) = group0; groups(1,:) = group1; groups(2,:) = group2; groups(3,:) = group3; groups(4,:) = group4
    groups(5,:) = group5; groups(6,:) = group6; groups(7,:) = group7; groups(8,:) = group8; groups(9,:) = group9

    do j = 1, num_iterations
        random_number_str = ""
		!run_totals(j) = total_sum
		count = count +1
        do i = 1, roll_count
		most_frequent_digits = ""
            ! Randomly select a group
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
			selected_number = int(rand * 5) + 5		!5-9
			end if
				if (selected_number < 0 .or. selected_number > 9) then
					print *, "Error: selected_number out of range"
					stop
				end if
				!if (selected_number < 9) then
					!print *, "Working Number!"
					!stop
				!end if
			! Randomly select a group(testing Quantum randomizing this so!!!!)
            !call random_number(rand)
            !selected_group = int(rand * 10)
            !if (selected_group < 0 .or. selected_group > 9) then
                !print *, "Error: selected_group out of range"
                !stop
            !end if
            ! Randomly select a number from the chosen group
            !call random_number(rand)
            !selected_number = int(rand * 10)
            !if (selected_number < 0 .or. selected_number > 9) then
                !print *, "Error: selected_number out of range"
                !stop
            !end if
            ! Store selected number
            selected_numbers(i) = trim(adjustl(groups(selected_group, selected_number)))
            ! Convert binary values to their respective ranges
            if (selected_numbers(i) == '0') then
                call random_number(rand)
                final_numbers(i) = int(rand * 25)  ! Values 0-24
					call random_number(rand)
					random_val2 = int(rand * 2)
						if (random_val2 == 1) then
						call random_number(rand)
						final_numbers(i) = int(rand * 25) +25	!25-49
						end if
            else if (selected_numbers(i) == '1') then
                call random_number(rand)
                final_numbers(i) = int(rand * 25) + 50  ! Values 50-74
					call random_number(rand)
					random_val3 = int(rand * 2)
						if (random_val3 == 1) then
						call random_number(rand)
						final_numbers(i) = int(rand * 25) + 75	!75-99
						end if
            end if
            ! Append number to string
            !write(random_number_str(i:i), '(I1)') final_numbers(i)
			write(random_number_str(3*i-2:3*i-1), '(I2)') final_numbers(i)
			write(random_number_str(3*i:3*i), '(A1)') ' '
        end do

        ! Convert string to integer
        read(random_number_str, '(A90)') current_number
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
        !do k = 1, roll_count
            !digit_count(final_numbers(k) + 1) = digit_count(final_numbers(k) + 1) + 1
        !end do		

        ! Print the generated number	!Die Test
        !print *, random_number_str
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
				digit_count(final_numbers(k) + 1) = digit_count(final_numbers(k) + 2) + 1
			end do
		end do
    ! Print the total sum in scientific notation	!Die Test
    print *, "Total sum (in scientific notation): ", total_sum
    ! Print the mean	!Die Test
    print *, "Mean: ", mean	
			!if (std_dev > 1.0e30) then
				!print *, "Standard Dev A: Value Too Large To Display"
	!else
	print *, "Standard Deviation: ", std_dev
			!end if		!End 2 Die Tests
    ! Print the most frequent digit(not sure if needed still but here in case)
	!max_digit = max_digit - 1
	!print *, "Most Frequent Digit: ", max_digit - 1
	! Find the mode(s)
	max_digit_count = maxval(digit_count)
	!print *, "Mode 0-99:"
		!do k = 0, 99
			!if (digit_count(k + 1) == max_digit_count) then
				!print *, k
			!end if
		!end do
		!do k = 0, 99
			!if (digit_count(k + 1) == max_digit_count) then
				!if (k < 1) then
					!write(most_frequent_digits(len_trim(most_frequent_digits) + 1:len_trim(most_frequent_digits) + 2), '(I1, A1)') k, ' '
				!else
					!write(most_frequent_digits(len_trim(most_frequent_digits) + 1:len_trim(most_frequent_digits) + 3), '(I2, A1)') k, ' '
				!end if
			!end if
		!end do
		do k = 0, 99
			if (digit_count(k + 1) == max_digit_count) then
				write(most_frequent_digits(len_trim(most_frequent_digits) + 1:len_trim(most_frequent_digits) + 2), '(I2)') k
				write(most_frequent_digits(len_trim(most_frequent_digits) + 3:len_trim(most_frequent_digits) + 3), '(A1)') '    '
			end if
		end do
		! Print all most frequent digits
		most_frequent_digits = trim(adjustl(most_frequent_digits))
		if (len_trim(most_frequent_digits) > 1) then
			print *, "Most Frequent Number(s): ", most_frequent_digits, ' '
		else
			print *, "Most Frequent Number: ", most_frequent_digits, ' '
		end if
		! Randomly select a place in the 500 lines of 30 numbers
		call random_number(rand)
		selected_place = int(rand * 15000) + 1  ! Ensures the value is between 1 and 750

		! Calculate the index for the line and position
		line_index = (selected_place - 1) / 30 + 1
		position_index = mod((selected_place - 1), 30) + 1

		! Get the value from the selected position
		d100_value = final_numbers(position_index)
		d100 = d100_value

		! Adjust d20 to be in the range 1-99
		d100 = mod(d100, 100)

		print *, "Random Mode0-99: ", d100
end program Die100_roller_EnJnDeSIgn2024