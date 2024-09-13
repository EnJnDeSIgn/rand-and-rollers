program D2v1_roller_EnJnDeSIgn2024
	! Look at this Copilot, all on my own... But I still could not have done it with out my co-author... You!
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number, i, roll_count, j, count
	character(len=180), dimension(0:9, 0:3) :: groups
	character(len=180), dimension(4) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
	real, dimension(25) :: run_totals
	real :: rand, roll_value, total_sum, carry_over, c, y, t, d_carry_over, decimal_shift, mean, sum_squares, std_dev, &
	grand_total, carry_over2, c1, y1, t1, call_number0, exponate, carry_over3, c2, y2, t2, exponate_sum
	
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
	! New Dv1 roller growing here!
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
	
	! Initialize group0
	group0 = (/ "-4  ", "+1  ", "-9  ", "-0.5"/)
	! Initialize group1
	group1 = (/ "+3  ", "-3  ", "-3  ", "-4  "/)
	! Initialize group2
	group2 = (/ "-9  ", "+7  ", "-1  ", "+7  "/)
	! Initialize group3
	group3 = (/ "-1  ", "-2  ", "+6  ", "-8  "/)
	! Initialize group4
	group4 = (/ "+0.5", "+2  ", "+3  ", "+4  "/)
	! Initialize group5
	group5 = (/ "-7  ", "-6  ", "0   ", "+1  "/)
	! Initialize group6
	group6 = (/ "-6  ", "+5  ", "-2  ", "0   "/)
	! Initialize group7
	group7 = (/ "+2  ", "+4  ", "-5  ", "+9  "/)
	! Initialize group8
	group8 = (/ "+5  ", "+6  ", "-5  ", "+8  "/)
	! Initialize group9
	group9 = (/ "+9  ", "-7  ", "-8  ", "+8  "/)
	
	! Assian groups to the groups array
	groups(0, :) = group0
	groups(1, :) = group1
	groups(2, :) = group2
	groups(3, :) = group3
	groups(4, :) = group4
	groups(5, :) = group5
	groups(6, :) = group6
	groups(7, :) = group7
	groups(8, :) = group8
	groups(9, :) = group9
	
	do i = 1, roll_count
	
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand * 10)
		if (selected_group < 0 .or. selected_group > 9) then
			print *, "Error: selected_group out of range"
			stop
		end if
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand * 4)
		if (selected_number < 0 .or. selected_number > 3) then
			print *, "Error: selected_number out of range"
			stop
		end if
		
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
		carry_over2 = carry_over2 + total_sum
					y1 = total_sum - c1
					t1 = grand_total + y1
					c1 = (t1 - grand_total) - y1
					grand_total = t1
			grand_total = grand_total + carry_over2
	!grand_total = grand_total + total_sum
	!print '("    ", E35.25)', total_sum
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
			total_sum = 0.0
			exponate = exponate * 10**(int(rand * 32))
			exponate = exponate * 10**(int(rand * 32))
			exponate = exponate * 10**(int(rand * 32))
	print '(" ", E35.25)', exponate
						carry_over3 = carry_over3 + exponate
							y2 = exponate - c2
							t2 = exponate_sum + y2
							c2 = (t2 - exponate_sum) - y2
							exponate_sum = t2
						exponate_sum = exponate_sum + carry_over3
			exponate = 0.0
						mean = sum(run_totals) / count
						sum_squares = 0.0
							do i = 1, count
							sum_squares = sum_squares + (run_totals(i) - mean)**2
							end do
						std_dev = sqrt(sum_squares / count)
end do
	print *
	print '("Sum ", E35.25)', exponate_sum
	!print '("Sum ", E35.25)', grand_total
	print '("Std ", E35.25)', std_dev
end program D2v1_roller_EnJnDeSIgn2024