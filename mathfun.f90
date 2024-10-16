program MathFun_EnJnDeSIgn2024
    implicit none
    integer :: num1, num2, user_answer, correct_answer, score, i
    character(len=1) :: operator
    real :: rand

    call random_seed()
    score = 0

    do i = 1, 10  ! 10 problems for the game
        call random_number(rand)
        num1 = int(rand * 10) + 1  ! Random number between 1 and 10
        call random_number(rand)
        num2 = int(rand * 10) + 1  ! Random number between 1 and 10
        call random_number(rand)

        if (rand < 0.5) then
            operator = '+'
            correct_answer = num1 + num2
        else
            operator = '-'
            correct_answer = num1 - num2
        end if

        print *, "What is ", num1, " ", operator, " ", num2, "?"
        read *, user_answer

        if (user_answer == correct_answer) then
            print *, "Correct!"
            score = score + 1
        else
            print *, "Incorrect. The correct answer is ", correct_answer
        end if
    end do

    print *, "Game over! Your score is: ", score, " out of 10"

end program MathFun_EnJnDeSIgn2024