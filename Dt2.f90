program Dt2_roller_EnJnDeSIgn2024
    implicit none
    integer :: selected_group, selected_number, i, j, roll_count, num_iterations
    character(len=4), dimension(0:9, 0:9) :: groups
    character(len=4), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, &
                                        &group9
    character(len=1), dimension(30) :: selected_numbers
    integer, dimension(30) :: final_numbers
    real :: rand

    call random_seed()
    roll_count = 30
	num_iterations = 10

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

    ! Assign groups to the groups array
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

		do j = 1, num_iterations
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
        ! Convert binary values to their respective ranges
        if (selected_numbers(i) == '0') then
            call random_number(rand)
            final_numbers(i) = int(rand * 5)  ! Values 0-4
        else if (selected_numbers(i) == '1') then
            call random_number(rand)
            final_numbers(i) = int(rand * 5) + 5  ! Values 5-9
        end if
    end do

    ! Print only the final numbers in a line
    write(*, "(30I1)") (final_numbers(i), i = 1, roll_count)
    print *
		end do
end program Dt2_roller_EnJnDeSIgn2024