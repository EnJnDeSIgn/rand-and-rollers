program Df8_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number
	character(len=180), dimension(0:8, 0:1) :: groups
	character(len=180), dimension(2) :: group0, group1, group2, group3, group4, group5, group6, group7, group8
	
	real :: rand
	
	Call random_seed()
	
	! Display the progarm name and introduction
	print *, "Df8_roller_EnJnDeSIgn2024_-4-0-+4"
	print *, "  randomness fit for the gods    "
	print *, "        by Ian J Norris          "
	print *, "      Ian.enjn@gmail.com         "
	
	! Initialize group0
	group0 = (/ "+4 ", "+1 "/)
	! Initialize group1
	group1 = (/ "0  ", "-2 "/)
	! Initialize group2
	group2 = (/ "+1 ", "-1 "/)
	! Initialize group3
	group3 = (/ "0  ", "-4 "/)
	! Initialize group4
	group4 = (/ "+3 ", "-1 "/)
	! Initialize group5
	group5 = (/ "+2 ", "+4 "/)
	! Initialize group6
	group6 = (/ "+3 ", "-3 "/)
	! Initialize group7
	group7 = (/ "+2 ", "-2 "/)
	! Initialize group8
	group8 = (/ "-3 ", "-4 "/)
	
do while (.true.)
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand * 9)
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand * 2)
	
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
	
	! display the selected number
print *, "from group ", selected_group, ": ", &
	trim(groups(selected_group, selected_number))
		print *, "roll again? (Y/N)"
		read(*,*) user_input
		if (user_input == 'N' .or. user_input == 'n') exit
	end do
	
	print *, "thank you for using the Df8 roller."
end program Df8_roller_EnJnDeSIgn2024