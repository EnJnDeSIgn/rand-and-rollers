program glacier_random_generator
    implicit none
    integer, parameter :: n = 50
    real :: glacier_size(n)
    integer :: i, io_status
    real :: min_size, max_size, normalized_size, rand_num, perturbation
    character(len=100) :: line
    character(len=20) :: year
    character(len=20) :: glacier_size_str

    ! Set a small offset to avoid zero normalization
    perturbation = 1.0e-6

    ! Open the glacier data file
    open(unit=10, file='simulated_glacier_data.csv', status='old', action='read')
    ! Skip the header line
    read(10, '(A)')

    ! Read the glacier sizes
    do i = 1, n
        read(10, '(A)', iostat=io_status) line
        if (io_status == 0) then
            read(line, '(A20, 1X, A)', iostat=io_status) year, glacier_size_str
            if (io_status == 0) then
                read(glacier_size_str, *) glacier_size(i)
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

    ! Find the min and max glacier sizes
    min_size = minval(glacier_size)
    max_size = maxval(glacier_size)

    ! Generate random numbers based on normalized glacier sizes
    do i = 1, 10
        call random_number(normalized_size)
        normalized_size = ((glacier_size(mod(i, n) + 1) - min_size) / (max_size - min_size)) + perturbation * rand()
        rand_num = normalized_size * rand()

        ! Debugging print statements
        print *, 'Simulate Glacier Decay:', normalized_size
        print *, 'Random number:         ', rand_num
    end do

contains
    function rand() result(r)
        real :: r
        call random_number(r)
    end function rand

end program glacier_random_generator
