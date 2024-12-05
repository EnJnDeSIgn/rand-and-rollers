program nrng
    implicit none
    integer, parameter :: n0 = 24, n1 = 50
    real(8) :: tide_height(n0), glacier_size(n1)
    integer :: i, io_status0, io_status1
    real(8) :: min_height, max_height, normalized_height, rand_num0, perturbation
    real(8) :: min_size, max_size, normalized_size, rand_num1
    character(len=100) :: line
    character(len=20) :: datetime, year
    character(len=20) :: tide_height_str
    character(len=20) :: glacier_size_str

    ! Set a small offset to avoid normalization issues
    perturbation = 1.0e-6

    ! Open the tide data file
    open(unit=10, file='mock_tide_data.csv', status='old', action='read')
    ! Skip the header line
    read(10, '(A)')

    ! Read the tide heights
    do i = 1, n0
        read(10, '(A)', iostat=io_status0) line
        if (io_status0 == 0) then
            read(line, '(A20, 1X, A)', iostat=io_status0) datetime, tide_height_str
            if (io_status0 == 0) then
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
	
	! Open the glacier data file
    open(unit=10, file='simulated_glacier_data.csv', status='old', action='read')
    ! Skip the header line
    read(10, '(A)')

    ! Read the glacier sizes
    do i = 1, n1
        read(10, '(A)', iostat=io_status1) line
        if (io_status1 == 0) then
            read(line, '(A20, 1X, A)', iostat=io_status1) year, glacier_size_str
            if (io_status1 == 0) then
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

    ! Generate random numbers based on normalized tide heights
    do i = 1, 10
        call random_number(normalized_height)
        normalized_height = ((tide_height(mod(i, n0) + 1) - min_height) / (max_height - min_height)) + perturbation * rand()
        rand_num0 = normalized_height * rand()

        ! Debugging print statements
        !print *, 'Normalized simulated tide height:', normalized_height
        !print *, 'TRNG: ', rand_num0
		! Print statements with higher precision
		!print '(A, F18.15)', 'TRNG: ', rand_num0
		! Generate random numbers based on normalized glacier sizes
        call random_number(normalized_size)
        normalized_size = ((glacier_size(mod(i, n1) + 1) - min_size) / (max_size - min_size)) + perturbation * rand()
        rand_num1 = normalized_size * rand()

        ! Debugging print statements
        !print *, 'Simulate Glacier Decay:', normalized_size
        !print *, 'GRNG: ', rand_num1
		!
		print '(A, F24.18)', 'TRNG: ', rand_num0
		print '(A, F24.18)', 'GRNG: ', rand_num1
    end do

contains
    function rand() result(r)
        real(8) :: r
        call random_number(r)
    end function rand

end program nrng


