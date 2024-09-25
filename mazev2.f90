program mazev2_EnJnDeSIgn2024
	implicit none
	character(len=1) :: user_input
	integer :: selected_group, selected_number, i, roll_count, ones_count, zeros_count, user_guess
	character(len=4), dimension(0:9, 0:9) :: groups
	character(len=4), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, &
										&group9
	character(len=1), dimension(10) :: selected_numbers
	real :: rand
	
	Call random_seed()
	roll_count = 10
	
	! Display the progarm name and introduction(taken out for better fuction)
	! Db4_roller_EnJnDeSIgn2024_B
	! randomness fit for the gods
	! random binary number finder
	!      by Ian J Norris
	!    Ian.enjn@gmail.com
	
	! Initialize group0
	group0 = (/ "1  ", "1  ", "1  ", "1  ", "1  ", &
				"1  ", "0  ", "0  ", "0  ", "0  " /)
	! Initialize group1
	group1 = (/ "1  ", "0  ", "1  ", "0  ", "0  ", &
				"1  ", "1  ", "1  ", "1  ", "0  " /)
	! Initialize group2
	group2 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", &
				"0  ", "1  ", "0  ", "0  ", "0  " /)
	! Initialize group3
	group3 = (/ "1  ", "0  ", "0  ", "1  ", "0  ", &
				"1  ", "0  ", "0  ", "1  ", "1  " /)
	! Initialize group4
	group4 = (/ "0  ", "1  ", "1  ", "0  ", "0  ", &
				"0  ", "1  ", "1  ", "0  ", "0  " /)
	! Initialize group5
	group5 = (/ "1  ", "1  ", "1  ", "0  ", "1  ", &
				"1  ", "1  ", "0  ", "0  ", "1  " /)
	! Initialize group6
	group6 = (/ "0  ", "1  ", "0  ", "1  ", "1  ", &
				"1  ", "0  ", "1  ", "1  ", "0  " /)
	! Initialize group7
	group7 = (/ "1  ", "1  ", "0  ", "0  ", "0  ", &
				"1  ", "1  ", "1  ", "0  ", "0  " /)
	! Initialize group8
	group8 = (/ "1  ", "0  ", "0  ", "0  ", "0  ", &
				"0  ", "0  ", "1  ", "0  ", "0  " /)
	! Initialize group9
	group9 = (/ "0  ", "1  ", "1  ", "1  ", "0  ", &
				"0  ", "1  ", "0  ", "0  ", "1  "/)
				
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
	
	ones_count = 0
	zeros_count = 0
	
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
	
	! Print the selected numbers in a line
	!print *, selected_numbers
	
        ! Count 1's and 0's
        if (selected_numbers(i) == "1") then
            ones_count = ones_count + 1
        else if (selected_numbers(i) == "0") then
            zeros_count = zeros_count + 1
        end if
    end do

    ! Print the introduction
    print *, "Welcome to the binary guessing game EnJnDeSIgn2024!"
    print *, "Can you guess the sequence of 1's and 0's?"
    print *, "by Ian J Norris."
	print *, "ian.enjn@gmail.com."

    ! Start the guessing game
    call start_guessing()

contains

    subroutine start_guessing
        implicit none
        integer :: guess_index

        guess_index = 1
        do while (guess_index <= roll_count)
            call get_user_guess(user_guess)
            if (user_guess == ichar(selected_numbers(guess_index)) - ichar('0')) then
                if (guess_index == roll_count) then
                    print *, "Aldor emerged into the sunlight. Freedom!"
                    exit
                else
                    print *, "Keep exploring..."
                    guess_index = guess_index + 1
                end if
            else
                print *, "Alas, the walls closed in. But Aldor still dreams."
                exit
            end if
        end do
    end subroutine start_guessing

    subroutine get_user_guess(guess)
        implicit none
        integer, intent(out) :: guess
        character(1) :: input_str

        do
            write(*, *) "Enter your guess (0 or 1): "
            read(*, *) input_str
            if (input_str == "0" .or. input_str == "1") then
                read(input_str, *) guess
                return
            else
                write(*, *) "Invalid input. Please enter 0 or 1."
            end if
        end do
    end subroutine get_user_guess

end program mazev2_EnJnDeSIgn2024