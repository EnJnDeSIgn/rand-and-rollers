program D100_roller_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number
	character(len=180), dimension(0:9, 0:9) :: groups
	character(len=180), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, &
										&group9
	
	real :: rand
	
	Call random_seed()
	
	! Display the progarm name and introduction
	print *, "D100_roller_EnJnDeSIgn2024_1-100"
	print *, "  randomness fit for the gods   "
	print *, "        by Ian J Norris         "
	print *, "       Ian.enjn@gmail.com       "
	
	! Initialize group0
	group0 = (/ "89 ", "43 ", "93 ", "10 ", "6  ", &
				"37 ", "19 ", "53 ", "94 ", "98 " /)
	! Initialize group1
	group1 = (/ "81 ", "91 ", "72 ", "85 ", "84 ", &
				"2  ", "100", "18 ", "56 ", "92 " /)
	! Initialize group2
	group2 = (/ "4  ", "38 ", "5  ", "96 ", "9  ", &
				"40 ", "22 ", "59 ", "69 ", "48 " /)
	! Initialize group3
	group3 = (/ "26 ", "8  ", "12 ", "75 ", "28 ", &
				"74 ", "46 ", "99 ", "50 ", "70 " /)
	! Initialize group4
	group4 = (/ "55 ", "35 ", "90 ", "7  ", "66 ", &
				"44 ", "1  ", "79 ", "82 ", "29 " /)
	! Initialize group5
	group5 = (/ "76 ", "71 ", "11 ", "20 ", "52 ", &
				"3  ", "23 ", "97 ", "51 ", "25 " /)
	! Initialize group6
	group6 = (/ "45 ", "41 ", "36 ", "49 ", "62 ", &
				"13 ", "31 ", "83 ", "80 ", "27 " /)
	! Initialize group7
	group7 = (/ "54 ", "17 ", "30 ", "16 ", "73 ", &
				"95 ", "68 ", "64 ", "88 ", "63 " /)
	! Initialize group8
	group8 = (/ "14 ", "42 ", "61 ", "32 ", "60 ", &
				"39 ", "58 ", "34 ", "87 ", "57 " /)
	! Initialize group9
	group9 = (/ "24 ", "86 ", "33 ", "47 ", "65 ", &
				"77 ", "15 ", "21 ", "78 ", "67 "/)
	
do while (.true.)
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand * 10)
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand * 10)
	
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
	
	print *, "thank you for using the d100 roller."
end program D100_roller_EnJnDeSIgn2024