program Db4_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number, i, roll_count
	character(len=4), dimension(0:9, 0:9) :: groups
	character(len=4), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
	character(len=1), dimension(30) :: selected_numbers
	real :: rand
	
	Call random_seed()
	roll_count = 30
	
	! Display the progarm name and introduction(taken out for better fuction)
	! Db4_roller_EnJnDeSIgn2024_B
	! randomness fit for the gods
	! random binary number finder
	!      by Ian J Norris
	!    Ian.enjn@gmail.com
	
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
	selected_number = int(rand * 10)
	if (selected_number < 0 .or. selected_number > 9) then
		print *, "Error: selected_number out of range"
		stop
	end if
	
	! Store selected number
	selected_numbers(i) = trim(adjustl(groups(selected_group, selected_number)))
	
	! display the selected number (commented out for testing)
	!print *, "from group ", selected_group, ": ", selected_numbers(i)
	end do
	
	! Print the selected numbers in a line
	print *, selected_numbers
end program Db4_roller_EnJnDeSIgn2024