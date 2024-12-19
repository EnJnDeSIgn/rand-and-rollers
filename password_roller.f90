program password_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number, i, count, j
	character(len=2), dimension(0:14, 0:8) :: groups
	character(len=2), dimension(9) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9, group10
	character(len=2), dimension(9) :: group11, group12, group13, group14
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
	group0 = (/ "i ", "+ ", "5 ", "8 ", "a ", "p ", "4 ", "r ", "/ "/)	! 9
	group1 = (/ "h ", "J ", "3 ", "% ", "H ", "| ", "7 ", "t ", "= "/)	! 18
	group2 = (/ "@ ", "x ", "! ", "& ", "I ", "9 ", "7 ", "# ", "3 "/)	! 27
	group3 = (/ "L ", "2 ", "A ", "3 ", "/ ", "c ", "R ", "0 ", "y "/)	! 36
	group4 = (/ "9 ", "e ", "= ", "V ", "j ", "s ", "u ", "? ", " 0"/)	! 45
	group5 = (/ "7 ", ". ", ". ", "1 ", "P ", "4 ", "z ", "U ", "- "/)	! 54
	group6 = (/ "6 ", "5 ", "K ", "T ", "v ", "n ", "4 ", "M ", "< "/)	! 63
	group7 = (/ "2 ", "N ", "5 ", "9 ", "d ", "! ", "3 ", "W ", "b "/)	! 72
	group8 = (/ "9 ", "6 ", "& ", ", ", "C ", "X ", ", ", "B ", "# "/)	! 81
	group9 = (/ "$ ", "7 ", "8 ", "8 ", "1 ", "S ", "9 ", "* ", "o "/)	! 90
   group10 = (/ "6 ", "Z ", "? ", "7 ", "6 ", "5 ", "1 ", "8 ", "2 "/)	! 99 a b c d e f g h i j k l m n o p q r s t u v w x y z
   group11 = (/ "2 ", "w ", "8 ", "% ", "G ", "F ", "E ", " 0", "k "/)	! 108
   group12 = (/ " O", "1 ", "4 ", "4 ", "* ", "q ", "3 ", "> ", "2 "/)
   group13 = (/ "5 ", "l ", "m ", "| ", "- ", "1 ", "6 ", "0 ", "Y "/)
   group14 = (/ "Q ", "0 ", "+ ", "> ", "D ", "g ", "@ ", "< ", "f "/)
	groups(0,:) = group0; groups(1,:) = group1; groups(2,:) = group2; groups(3,:) = group3; groups(4,:) = group4
    groups(5,:) = group5; groups(6,:) = group6; groups(7,:) = group7; groups(8,:) = group8; groups(9,:) = group9
	groups(10,:) = group10; groups(11,:) = group11; groups(12,:) = group12; groups(13,:) = group13; groups(14,:) = group14
	
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
		selected_group = int(rand * 15)
		! Randomly select a number from the chosen group
		call random_number(rand)
		selected_number = int(rand * 9)
	
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
	trim(groups(selected_group, selected_number)), all_results
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