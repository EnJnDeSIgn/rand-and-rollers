program Dq4_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number
	character(len=180), dimension(0:1, 0:2) :: groups
	character(len=180), dimension(3) :: group0, group1
	
	real :: rand
	
	Call random_seed()
	
	! Display the progarm name and introduction
	print *, "Dq4_roller_EnJnDeSIgn2024_+0.25_To_-0.25"
	print *, "     randomness fit for the gods        "
	print *, "            by Ian J Norris             "
	print *, "          Ian.enjn@gmail.com            "
	print *, "      Quantum roller for 1/4 values     "
	
	! Initialize group0
	group0 = (/ "-0.25", "0    ", "0    "/)
	! Initialize group1
	group1 = (/ "-0.25", "+0.25", "+0.25"/)
	
do while (.true.)
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand * 2)
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand * 3)
	
	! Assian groups to the groups array
	groups(0, :) = group0
	groups(1, :) = group1
	
	! display the selected number
print *, "from group ", selected_group, ": ", &
	trim(groups(selected_group, selected_number))
		print *, "roll again? (Y/N)"
		read(*,*) user_input
		if (user_input == 'N' .or. user_input == 'n') exit
	end do
	
	print *, "thank you for using the Dq4 roller."
end program Dq4_roller_EnJnDeSIgn2024