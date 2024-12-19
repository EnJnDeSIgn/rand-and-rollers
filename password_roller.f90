program password_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number, i, count, j
	character(len=2), dimension(0:10, 0:9) :: groups
	character(len=2), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9, group10
	character(len=2) :: element
	character(len=255) :: result_string, all_results
	integer :: number, total, ios
	
	real :: rand
	
	Call random_seed()
	
	! Display the progarm name and introduction
	!print *, "password_roller_EnJnDeSIgn2024      ."
	!print *, "  randomness fit for the gods    "
	!print *, "        by Ian J Norris          "
	!print *, "      Ian.enjn@gmail.com         "
	! Upgrading symbols if possabale
	!! Example group with letters and symbols
	! +, -, *, /, =, <, >, &, |, %, @, #, !, ?, . and ,.
	
	! Initialize group0 to group10
	group0 = (/ "i ", "4 ", "+5", "8 ", "a ", "p ", "-4", "r ", "/ ", "+2"/)
	group1 = (/ "h ", "J ", "-3", "% ", "H ", "l ", "+7", "t ", "= ", "w "/)
	group2 = (/ "| ", "x ", "-1", "& ", "I ", "-9", "+7", "# ", "-3", "+8"/)
	group3 = (/ "g ", "-2", "A ", "3 ", "q ", "c ", "R ", "0 ", "y ", "m "/)
	group4 = (/ "9 ", "e ", "+3", "V ", "j ", "s ", "u ", "-6", "+ ", "G "/)
	group5 = (/ "-7", ". ", "0 ", "+1", "> ", "+4", "z ", "U ", "- ", "F "/)
	group6 = (/ "-6", "+5", "-2", "T ", "v ", "n ", "+4", "Q ", "< ", "E "/)
	group7 = (/ "+2", "@ ", "-5", "+9", "d ", "! ", "+3", "W ", "b ", "D "/)
	group8 = (/ "-9", "+6", "-5", ", ", "C ", "X ", "Y ", "B ", "-4", "k "/)
	group9 = (/ "$ ", "-7", "-8", "+8", "-1", "S ", "+9", "* ", "o ", "f "/)
   group10 = (/ "+6", "Z ", "? ", "7 ", "6 ", "5 ", "+1", "-8", "2 ", "1 "/)
	groups(0,:) = group0; groups(1,:) = group1; groups(2,:) = group2; groups(3,:) = group3; groups(4,:) = group4
    groups(5,:) = group5; groups(6,:) = group6; groups(7,:) = group7; groups(8,:) = group8; groups(9,:) = group9
	groups(10,:) = group10
	
	all_results = ""
	count = 0
	
do while (.true.)
	total = 0
	result_string = ""
	all_results = ""
	count = count + 1
	
	do i = 1, 25
		! Randomly select a group
		call random_number(rand)
		selected_group = int(rand * 11)
		! Randomly select a number from the chosen group
		call random_number(rand)
		selected_number = int(rand * 10)
	
		element = trim(adjustl(groups(selected_group, selected_number)))
		
		! Dynamically apply adjustl based on count
		do j = 1, count
			element = adjustl(element)
		end do
	
		! Check if the element is a number or symbol/letter
		read(element, '(I4,A)', IOSTAT=ios) number
		if (ios == 0) then
			! Element is a number
			total = total + abs(number)
		else
			! Element is a symbol/letter
			if (total /= 0) then
				write(result_string, '(A,I4)') trim(result_string), total
				total = 0 
			end if 
			result_string = trim(result_string) // (element)
		end if
	end do
	! Append any remaining total to the result string
	if (total /= 0) then
		write(result_string, '(A,I4)') trim(result_string), total
	end if
	
	! Store the result in all_results
	all_results = trim(adjustl(all_results)) // trim(adjustl(result_string))
	
	! display the selected number
print *, "from group ", selected_group, ": ", &
	trim(adjustl(groups(selected_group, selected_number))), all_results
	!print *, trim(result_string)
	print *, "roll again? (Y/N)"
	read(*,*) user_input
	if (user_input == 'N' .or. user_input == 'n') exit
end do
	! Display all accumulated results
	print *, "Total iterations: ", count
	! Display all accumulated results
	!print *, "All results: ", trim(all_results), all_results
	print *, "thank you for using the Password roller."
end program password_roller_EnJnDeSIgn2024