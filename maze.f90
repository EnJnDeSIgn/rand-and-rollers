program maze_game_EnJnDeSIgn2024
    implicit none

    ! Declare variables
    integer :: maze(5, 5)
    integer :: x, y, next_choice

    ! Initialize the maze (you can customize this part)
    maze = reshape([1, 1, 1, 1, 1, &
                    1, 0, 0, 0, 1, &
                    1, 1, 1, 0, 1, &
                    1, 0, 1, 0, 1, &
                    1, 1, 1, 2, 1], [5, 5])

	! print the introduction
	print *, "Welcome to the random maze generator EnJnDeSIgn2024!"
	print *, "can find your way out of this digital maze?"
	print *, "by Ian J Norris ian.enjn@gmail.com."
	
    ! Start the game from the entrance (you can customize the starting position)
    call explore_maze(1, 1)

contains

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

    recursive subroutine explore_maze(x, y)
        implicit none
        integer, intent(in) :: x, y
		integer :: next_choice
		
		! Check if the current position is within the bounds of the maze
		if (x < 1 .or. x > 5 .or. y < 1 .or. y > 5) then
			RETURN
		END IF

        if (maze(x, y) == 0) then
            write(*, *) "Alas, the walls closed in. But Aldor still dreams."
			RETURN
        elseif (maze(x, y) == 2) then
            write(*, *) "Aldor emerged into the sunlight. Freedom!"
			RETURN
        else
            write(*, *) "Keep exploring..."
            maze(x, y) = 0  ! Mark this path as visited
            call get_user_guess(next_choice) ! Prompt user for input
            if (next_choice == 0 .and. x < 5) then
                call explore_maze(x + 1, y) ! Recursive call
            elseif (next_choice == 1 .and. y < 5) then
                call explore_maze(x, y + 1) ! Recursive call
			else
				write(*, *) "Alas, the walls closed in. But Aldor still dreams."
            end if
        end if
    end subroutine explore_maze

end program maze_game_EnJnDeSIgn2024