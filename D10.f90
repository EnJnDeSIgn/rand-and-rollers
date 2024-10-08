program D10_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number
	character(len=180), dimension(0:4, 0:1) :: groups
	character(len=180), dimension(2) :: group0, group1, group2, group3, group4
	
	real :: rand
	
	Call random_seed()
	
	! Display the progarm name and introduction
	print *, "D10_roller_EnJnDeSIgn2024_1-10"
	print *, " randomness fit for the gods  "
	print *, "       by Ian J Norris        "
	print *, "      Ian.enjn@gmail.com      "
	
	! Initialize group0
	group0 = (/ "8  ", "6  "/)
	! Initialize group1
	group1 = (/ "2  ", "5  "/)
	! Initialize group2
	group2 = (/ "3  ", "7  "/)
	! Initialize group3
	group3 = (/ "1  ", "10 "/)
	! Initialize group4
	group4 = (/ "9  ", "4  "/)
	
do while (.true.)
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand * 5)
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand * 2)
	
	! Assian groups to the groups array
	groups(0, :) = group0
	groups(1, :) = group1
	groups(2, :) = group2
	groups(3, :) = group3
	groups(4, :) = group4
	
	! display the selected number
print *, "from group ", selected_group, ": ", &
	trim(groups(selected_group, selected_number))
		print *, "roll again? (Y/N)"
		read(*,*) user_input
		if (user_input == 'N' .or. user_input == 'n') exit
	end do
	
	print *, "thank you for using the d10 roller."
end program D10_roller_EnJnDeSIgn2024