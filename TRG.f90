program tide_random_generator
    implicit none
    integer, parameter :: n = 24
    real :: tide_height(n)
    integer :: i, io_status
    real :: min_height, max_height, normalized_height, rand_num, perturbation
    character(len=100) :: line
    character(len=20) :: datetime
    character(len=20) :: tide_height_str

    ! Set a small offset to avoid normalization issues
    perturbation = 1.0e-6

    ! Open the tide data file
    open(unit=10, file='mock_tide_data.csv', status='old', action='read')
    ! Skip the header line
    read(10, '(A)')

    ! Read the tide heights
    do i = 1, n
        read(10, '(A)', iostat=io_status) line
        if (io_status == 0) then
            read(line, '(A20, 1X, A)', iostat=io_status) datetime, tide_height_str
            if (io_status == 0) then
                read(tide_height_str, *) tide_height(i)
            else
                print *, "Error parsing line ", i
                exit
            end if
        else
            print *, "Error reading line ", i
            exit
        end if
    end do
    close(10)

    ! Find the min and max tide heights
    min_height = minval(tide_height)
    max_height = maxval(tide_height)

    ! Generate random numbers based on normalized tide heights
    do i = 1, 10
        call random_number(normalized_height)
        normalized_height = ((tide_height(mod(i, n) + 1) - min_height) / (max_height - min_height)) + perturbation * rand()
        rand_num = normalized_height * rand()

        ! Debugging print statements
        print *, 'Normalized simulated tide height:', normalized_height
        print *, 'Random number based on tide data:', rand_num
    end do

contains
    function rand() result(r)
        real :: r
        call random_number(r)
    end function rand

end program tide_random_generator


