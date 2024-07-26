program D12_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number
	character(len=180), dimension(0:3, 0:2) :: groups
	character(len=180), dimension(3) :: group0, group1, group2, group3
	
	real :: rand
	
	Call random_seed()
	
	! Display the progarm name and introduction
	print *, "D12_roller_EnJnDeSIgn2024_1-12"
	print *, " randomness fit for the gods  "
	print *, "       by Ian J Norris        "
	print *, "      Ian.enjn@gmail.com      "
	
	! Initialize group0
	group0 = (/ "6  ", "12 ", "1  "/)
	! Initialize group1
	group1 = (/ "10 ", "11 ", "5  "/)
	! Initialize group2
	group2 = (/ "3  ", "2  ", "9  "/)
	! Initialize group3
	group3 = (/ "4  ", "8  ", "7  "/)
	
	
do while (.true.)
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand * 4)
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand * 3)
	
	! Assian groups to the groups array
	groups(0, :) = group0
	groups(1, :) = group1
	groups(2, :) = group2
	groups(3, :) = group3
	
	! display the selected number
print *, "from group ", selected_group, ": ", &
	trim(groups(selected_group, selected_number))
		print *, "roll again? (Y/N)"
		read(*,*) user_input
		if (user_input == 'N' .or. user_input == 'n') exit
	end do
	
	print *, "thank you for using the d12 roller."
end program D12_roller_EnJnDeSIgn2024