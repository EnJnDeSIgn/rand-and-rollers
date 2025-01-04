program MathFun_EnJnDeSIgn2024
    implicit none
    integer :: num1, num2, user_answer, correct_answer, score, i
    character(len=1) :: operator
    real :: rand, random_val0, random_val1, random_val2
	real :: start_time, end_time, elapsed_time, total_time

    call random_seed()
    score = 0
	total_time = 0.0

    do i = 1, 10  ! 10 problems for the game
		! Start timer
        call cpu_time(start_time)
		! Old call
        !call random_number(rand)
        !num1 = int(rand * 10) + 1  ! Random number between 1 and 10
        !call random_number(rand)
        !num2 = int(rand * 10) + 1  ! Random number between 1 and 10
		!!!!
		! Quantum Version 1.0
			call random_number(rand)
			random_val1 = int(rand * 2)
			! Randomly select a num1
			if (random_val1 == 0) then
			call random_number(rand)
			num1 = int(rand * 5) + 1	!1-5
			else if (random_val1 == 1) then
			Call random_number(rand)
			num1 = int(rand * 5) + 6	!6-10
			else if (random_val1 == 2) then
			num1 = int(rand * 5) + 11
			end if
			if (num1 < 1 .or. num1 > 15) then
					print *, "Error: num1 out of range"
					stop
			end if
			! Quantum Version 1.0
			call random_number(rand)
			random_val2 = int(rand * 3)
			! Randomly select a num1
			if (random_val2 == 0) then
			call random_number(rand)
			num2 = int(rand * 5) + 1	!1-5
			else if (random_val2 == 1) then
			Call random_number(rand)
			num2 = int(rand * 5) + 6	!6-10
			else if (random_val2 == 2) then
			num2 = int(rand * 5) + 11	!11-15
			end if
			if (num2 < 1 .or. num2 > 15) then
					print *, "Error: num2 out of range"
					stop
			end if
		! Just + and - game syntax
        !call random_number(rand)
		!if (rand < 0.5) then
            !operator = '+'
            !correct_answer = num1 + num2
        !else
            !operator = '-'
            !correct_answer = num1 - num2
        !end if
        call random_number(rand)
		if (rand < 0.25) then
            operator = '+'
            correct_answer = num1 + num2
        else if (rand < 0.5) then
            operator = '-'
            correct_answer = num1 - num2
        else if (rand < 0.75) then
            operator = '*'
            correct_answer = num1 * num2
        else
            operator = '/'
            ! Ensure num2 is a factor of num1
            if (mod(num1, num2) == 0) then
                correct_answer = num1 / num2
            else
				call random_number(rand)
				random_val0 = int(rand * 8)
				if (random_val0 == 0) then
                num1 = num2 * 2  ! If not, set num2 to 1 to avoid errors
                correct_answer = num1 / num2
				else if (random_val0 == 1) then
				num1 = num2 * 3
				correct_answer = num1 / num2
				else if (random_val0 == 2) then
				num1 = num2 * 4
				correct_answer = num1 / num2
				else if (random_val0 == 3) then
				num1 = num2 * 5
				correct_answer = num1 / num2
				else if (random_val0 == 4) then
				num1 = num2 * 6
				correct_answer = num1 / num2
				else if (random_val0 == 5) then
				num1 = num2 * 7
				correct_answer = num1 / num2
				else if (random_val0 == 6) then
				num1 = num2 * 8
				correct_answer = num1 / num2
				else if (random_val0 == 7) then
				num1 = num2 * 9
				correct_answer = num1 / num2
				end if
            end if
        end if
		! Start timer
        !call cpu_time(start_time)

        print *, "What is ", num1, " ", operator, " ", num2, "?"
		print *
        read *, user_answer
		
        if (user_answer == correct_answer) then
            print *, "Correct!"
            score = score + 1
        else
            print *, "Incorrect. The correct answer is ", correct_answer
        end if
		! End timer
        call cpu_time(end_time)
        elapsed_time = end_time - start_time
        total_time = total_time + elapsed_time
	end do
    print *, "Game over! Your score is: ", score, " out of 10"
	print *, "Total time taken: ", total_time, " seconds"

end program MathFun_EnJnDeSIgn2024