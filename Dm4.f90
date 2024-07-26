program Dm4_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number
	character(len=180), dimension(0:9, 0:3) :: groups
	character(len=180), dimension(4) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
	
	real :: rand
	
	Call random_seed()
	
	! Display the progarm name and introduction
	print *, "Dm4_roller_EnJnDeSIgn2024_-9-0-+9"
	print *, "  randomness fit for the gods    "
	print *, "        by Ian J Norris          "
	print *, "      Ian.enjn@gmail.com         "
	print *, "   Quantum values +0.5 or -0.5   " 
	
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
	
do while (.true.)
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand * 10)
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand * 4)
	
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
	
	! display the selected number
print *, "from group ", selected_group, ": ", &
	trim(groups(selected_group, selected_number))
		print *, "roll again? (Y/N)"
		read(*,*) user_input
		if (user_input == 'N' .or. user_input == 'n') exit
	end do
	
	print *, "thank you for using the Dm4 roller."
end program Dm4_roller_EnJnDeSIgn2024