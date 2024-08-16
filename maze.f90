program maze_game_EnJnDeSIgn2024
	! I really have to thank Copilot for this one, I'm not sure if they really want me to make them someware to go...
    implicit none
    ! Declare variables
    integer :: maze(5, 5)
    integer :: x, y, next_choice, i, j
	real :: rand_val
	integer, allocatable :: open_list(:,:)
	integer, dimension(:), allocatable :: seed
	integer :: seed_size
	
	
	allocate(open_list(5, 5))
	
	! Get the size of the seed array
	call random_seed(size=seed_size)
	allocate(seed(seed_size))
	
	! Initialize random number generator with a seed based on the current time
	call random_seed(get=seed)
	call random_seed(put=seed)
	
	! Initialize the maze with walls (1)
	maze = 1

    ! Initialize the maze with walls (1) and open spaces (0)
    maze = reshape([1, 1, 1, 1, 1, &
                    1, 0, 0, 0, 1, &
                    1, 1, 1, 0, 1, &
                    1, 0, 1, 0, 1, &
                    1, 1, 1, 2, 1], [5, 5])
					
	! Randomly choose starting point and mark it as part of the maze
	call random_number(rand_val)
	x = 1 + int(rand_val * 5)
	call random_number(rand_val)
	y = 1 + int(rand_val * 5)
	maze(x, y) = 0

	! Carve a guaranteed path from (1,1) to (5,5)
	do i = 1, 5
		maze(i, 1) = 0
	end do
	do j = 1, 5
		maze(5, j) = 0
	end do
	! Ensure there is an exit
	maze(5, 5) = 2
	! Generate the maze using a random algorithm
	do i = 1, 5
		do j = 1, 5
			if (maze(i, j) /= 2 .and. (i /= 5 .or. j /= 1) .and. (i /= 1 .or. j /= 5)) then
				call random_number(rand_val)
				if (rand_val > 0.3) then
				maze(i, j) = 1	! Add a wall
				else
				maze(i, j) = 0	! Add a path
				end if
			end if
		end do
	end do
	
	
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