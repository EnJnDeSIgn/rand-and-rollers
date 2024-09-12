program Dv1_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number, i, roll_count, j
	character(len=180), dimension(0:9, 0:3) :: groups
	character(len=180), dimension(4) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
	real :: rand, roll_value, total_sum, carry_over, c, y, t, d_carry_over, decimal_shift
	
	c = 0.0
	
	Call random_seed()
	roll_count = 1000
	decimal_shift = 0.1
	total_sum = 0.0
	carry_over = 0.0
	d_carry_over = 0.0
	
	
	! Display the progarm name and introduction
	!print *, "Dm4_roller_EnJnDeSIgn2024_-9-0-+9"
	!print *, "  randomness fit for the gods    "
	!print *, "        by Ian J Norris          "
	!print *, "      Ian.enjn@gmail.com         "
	!print *, "   Quantum values +0.5 or -0.5   "
	! New Dv1 roller growing here!
do j = 1, 25	! Outer loop, re-stateing the fallowing inside the loop if nessasary.
	total_sum = 0.0
	decimal_shift = 0.1
	carry_over = 0.0
	d_carry_over = 0.0
	c = 0.0
	
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
	print '(" ", E35.25)', total_sum
	carry_over = 0.0
end do
end program Dv1_roller_EnJnDeSIgn2024