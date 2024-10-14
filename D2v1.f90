program D2v1_roller_EnJnDeSIgn2024
	! Look at this Copilot, all on my own... But I still could not have done it with out my co-author... You!
	! Okay so now I'v had lot's of help getting the 2ed std_dev1 up as well as the variance.
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number, i, roll_count, j, count
	character(len=180), dimension(0:9, 0:3) :: groups
	character(len=180), dimension(4) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
	real, dimension(25) :: run_totals
	real, dimension(25) :: exponate_values
	real :: rand, roll_value, total_sum, carry_over, c, y, t, d_carry_over, decimal_shift, mean, sum_squares, std_dev, &
	grand_total, carry_over2, c1, y1, t1, call_number0, carry_over3, c2, y2, t2, exponate_sum, mean1, sum_squares1, &
	std_dev1, exponate, mean_run_totals, covariance, variance_run_totals, variance_exponate_values, combined_variance, &
	combined_std_dev, mean_exponate_values, difference, adjusted_std_dev1, random_val0, random_val1
	
	count = 25
	
	c = 0.0
	c1 = 0.0
	c2 = 0.0
	
	Call random_seed()
	roll_count = 1000
	decimal_shift = 0.1
	total_sum = 0.0
	carry_over = 0.0
	d_carry_over = 0.0
	grand_total = 0.0
	
	
	! Display the progarm name and introduction
	!print *, "Dm4_roller_EnJnDeSIgn2024_-9-0-+9"
	!print *, "  randomness fit for the gods    "
	!print *, "        by Ian J Norris          "
	!print *, "      Ian.enjn@gmail.com         "
	!print *, "   Quantum values +0.5 or -0.5   "
	! New Dv1 roller growing, here! MG Exponate's
	! Expanding and changing So name chage time...
do j = 1, 25	! Outer loop, re-stateing the fallowing inside the loop if nessasary.
	total_sum = 0.0
	decimal_shift = 0.1
	carry_over = 0.0
	d_carry_over = 0.0
	c = 0.0
	c1 = 0.0
	c2 = 0.0
	call_number0 = 0.0
	exponate = 0.0
	exponate_sum = 0.0
	run_totals(j) = total_sum
	count = count +1
	
	! Initialize group0-group9
	group0 = (/ "-4  ", "+1  ", "-9  ", "-0.5"/)
	group1 = (/ "+3  ", "-3  ", "-3  ", "-4  "/)
	group2 = (/ "-9  ", "+7  ", "-1  ", "+7  "/)
	group3 = (/ "-1  ", "-2  ", "+6  ", "-8  "/)
	group4 = (/ "+0.5", "+2  ", "+3  ", "+4  "/)
	group5 = (/ "-7  ", "-6  ", "0   ", "+1  "/)
	group6 = (/ "-6  ", "+5  ", "-2  ", "0   "/)
	group7 = (/ "+2  ", "+4  ", "-5  ", "+9  "/)
	group8 = (/ "+5  ", "+6  ", "-5  ", "+8  "/)
	group9 = (/ "+9  ", "-7  ", "-8  ", "+8  "/)
	! Assian groups to the groups array
	groups(0, :) = group0; groups(1, :) = group1; groups(2, :) = group2; groups(3, :) = group3; groups(4, :) = group4
	groups(5, :) = group5; groups(6, :) = group6; groups(7, :) = group7; groups(8, :) = group8; groups(9, :) = group9
	
	do i = 1, roll_count
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
	!!!!
	!call random_number(rand)
	!selected_group = int(rand * 10)		!0-9
		if (selected_group < 0 .or. selected_group > 9) then
			print *, "Error: selected_group out of range"
			stop
		end if
		! Quantum Testing Syntax
		!if (selected_group == 9) then
			!print *, "Working Group9!"
			!stop
		!end if
		!if (selected_group == 8) then
			!print *, "Working Group8!"
			!stop
		!end if
		!if (selected_group == 7) then
			!print *, "Working Group7!"
			!stop
		!end if
		!if (selected_group == 6) then
			!print *, "Working Group6!"
			!stop
		!end if
		!if (selected_group == 5) then
			!print *, "Working Group5!"
			!stop
		!end if
		!if (selected_group == 4) then
			!print *, "Working Group4!"
			!stop
		!end if
		!if (selected_group == 3) then
			!print *, "Working Group3!"
			!stop
		!end if
		!if (selected_group == 2) then
			!print *, "Working Group2!"
			!stop
		!end if
		!if (selected_group == 1) then
			!print *, "Working Group1!"
			!stop
		!end if
		!if (selected_group == 0) then
			!print *, "Working Group0!"
			!stop
		!end if
	! Randomly select a number from the chosen group
	call random_number(rand)
			random_val1 = int(rand * 2)
			if (random_val1 == 0) then
            ! Randomly select a number from the chosen group
			call random_number(rand)
			selected_number = int(rand * 2)			!0-1
			else if (random_val1 == 1) then
			Call random_number(rand)
			selected_number = int(rand * 2) + 2		!2-3
			end if
	!!!!
	!call random_number(rand)
	!selected_number = int(rand * 4)		!0-3
		if (selected_number < 0 .or. selected_number > 3) then
			print *, "Error: selected_number out of range"
			stop
		end if
		! Quantum Testing Syntax
		!if (selected_number == 3) then
			!print *, "Working Number3!"
			!stop
		!end if
		!if (selected_number == 2) then
			!print *, "Working Number2!"
			!stop
		!end if
		!if (selected_number == 1) then
			!print *, "Working Number1!"
			!stop
		!end if
		!if (selected_number == 0) then
			!print *, "Working Number0!"
			!stop
		!end if
	read(groups(selected_group, selected_number), *) roll_value
	
		if (roll_value == 0.5 .or. roll_value == -0.5) then
			d_carry_over = d_carry_over + roll_value
		else
			roll_value = (roll_value * decimal_shift)
			carry_over = carry_over + roll_value
				y = roll_value - c
				t = total_sum + y
				C = (t - total_sum) - y
				total_sum = t
			d_carry_over = 0.0
		end if
			if (d_carry_over /= 0.0) then
			decimal_shift = decimal_shift * 0.1
		endif
		total_sum = total_sum + carry_over
		total_sum = total_sum / 2
	
	! display the selected number
!print *, "from group ", selected_group, ": ", &
	!trim(groups(selected_group, selected_number))
	!print '("Sum: ", E35.25)', total_sum ! Test print.
	end do
				!exponate_values(j) = exponate
		carry_over2 = carry_over2 + total_sum
					y1 = total_sum - c1
					t1 = grand_total + y1
					c1 = (t1 - grand_total) - y1
					grand_total = t1
			grand_total = grand_total + carry_over2
	print '("Sum0:", E35.25)', total_sum
	carry_over = 0.0
	call random_number(rand)
	call_number0 = rand / 1.0e32
	call random_number(rand)
		if (rand < 0.5) then
			call_number0 = -call_number0
		end if
	!print '("Call", E35.25)', call_number0
			exponate = exponate + total_sum
			exponate = exponate * call_number0
			!exponate = exponate * total_sum
			total_sum = 0.0
			exponate = exponate * 10**(int(rand * 32))
			exponate = exponate * 10**(int(rand * 32))
			exponate = exponate * 10**(int(rand * 32))
				exponate_values(j) = exponate ! Moved up a bit.
	print '("Added Exponate:", E35.25)', exponate
						carry_over3 = carry_over3 + exponate
							y2 = exponate - c2
							t2 = exponate_sum + y2
							c2 = (t2 - exponate_sum) - y2
							exponate_sum = t2
						exponate_sum = exponate_sum + carry_over3
			exponate = 0.0
end do
						mean = sum(run_totals) / count
						sum_squares = 0.0
							do i = 1, count
							sum_squares = sum_squares + (run_totals(i) - mean)**2
							end do
						std_dev = sqrt(sum_squares / count)
						
						! New std_dev1
							mean1 = sum(exponate_values) / count
							sum_squares1 = 0.0
								do i = 1, count
								sum_squares1 = sum_squares1 + (exponate_values(i) - mean1)**2
								end do
							std_dev1 = sqrt(sum_squares1 / count)
									
							!print '("New Std", E35.25)', std_dev1
!end do ! Testing new location
								
							! Calculate mean for run_totals
							mean_run_totals = sum(run_totals) / count

							! Calculate mean for exponate_values
							mean_exponate_values = sum(exponate_values) / count

							! Calculate covariance
							covariance = 0.0
								do i = 1, count
								covariance = covariance + (run_totals(i) - mean_run_totals) * (exponate_values(i) - mean_exponate_values)
								end do
							covariance = covariance / count

							! Calculate variance for run_totals
							variance_run_totals = std_dev**2

							! Calculate variance for exponate_values
							variance_exponate_values = std_dev1**2

							! Combine the variances
							combined_variance = variance_run_totals + variance_exponate_values + 2 * covariance

							! Calculate the combined standard deviation
							if (combined_variance >= 0.0) then
							combined_std_dev = sqrt(combined_variance)
							else
							combined_std_dev = 0.0
							end if
									! Recalculate std_dev1 after adding combined_std_dev
									mean1 = sum(exponate_values) / count
									sum_squares1 = 0.0
										do i = 1, count
										sum_squares1 = sum_squares1 + (exponate_values(i) - mean1)**2
										end do
									std_dev1 = sqrt(sum_squares1 / count)
							
	print *
	print '("Sum0", E35.25)', grand_total
				! Check for large values in std_dev
			if (std_dev > 1.0e30) then
				print *, "Standard Dev0 : Value Too Large To Display"
	else
	print '("Std0", E35.25)', std_dev
			end if
	print *
	print '("Exponate Sum:", E35.25)', exponate_sum
			! Check for large values in std_dev1
			if (std_dev1 > 1.0e30) then
				print *, "Exponate Standard Dev: Value Too Large To Display"
	else
	print '("Exponate Std ", E35.25)', std_dev1
			end if
	print *
			! Check for large values in std_dev
			if (combined_std_dev > 1.0e30) then
				print *, "Covariance : Value Too Large To Display"
	else
	print '("Covariance", E35.25)', combined_std_dev
			end if
end program D2v1_roller_EnJnDeSIgn2024