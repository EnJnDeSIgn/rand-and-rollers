program nrng
    implicit none
    integer, parameter :: n0 = 24, n1 = 50
    real(8) :: tide_height(n0), glacier_size(n1), perturbation, total_sum, c2, y2, t2, carry_over2
    integer :: i, io_status0, io_status1
    real(8) :: min_height, max_height, normalized_height, rand_num0, total_tide, c0, y0, t0, carry_over0
    real(8) :: min_size, max_size, normalized_size, rand_num1, total_glacier, c1, y1, t1, carry_over1
    character(len=100) :: line
    character(len=20) :: datetime, year
    character(len=20) :: tide_height_str
    character(len=20) :: glacier_size_str

    ! Set a small offset to avoid normalization issues
    perturbation = 1.0e-6
	total_tide = 0.0
	total_glacier = 0.0
	total_sum = 0.0
	carry_over0 = 0.0
	carry_over1 = 0.0
	carry_over2 = 0.0
	c0 = 0.0
	c1 = 0.0
	c2 = 0.0

    ! Open the tide data file
    open(unit=20, file='mock_tide_data.csv', status='old', action='read')
    ! Skip the header line
    read(20, '(A)')

    ! Read the tide heights
    do i = 1, n0
        read(20, '(A)', iostat=io_status0) line
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
    close(20)

    ! Find the min and max tide heights
    min_height = minval(tide_height)
    max_height = maxval(tide_height)
	
	! Open the glacier data file
    open(unit=20, file='simulated_glacier_data.csv', status='old', action='read')
    ! Skip the header line
    read(20, '(A)')

    ! Read the glacier sizes
    do i = 1, n1
        read(20, '(A)', iostat=io_status1) line
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
    close(20)

    ! Find the min and max glacier sizes
    min_size = minval(glacier_size)
    max_size = maxval(glacier_size)

    ! Generate random numbers based on normalized tide heights
    do i = 1, 10
        call random_number(normalized_height)
        normalized_height = ((tide_height(mod(i, n0) + 1) - min_height) / (max_height - min_height)) + perturbation * rand()
        rand_num0 = normalized_height * rand()
		!total_tide = total_tide + rand_num0
		carry_over0 = carry_over0 + total_tide
		y0 = rand_num0 - c0			! So far, so good: c0 is 0
		t0 = total_tide + y0		! Alas, sum is big, y small, so low-order digits of y are lost.
		c0 = (t0 - total_tide) - y0	! (t0-total_tide) recovers the high part of y; subtracting y recovers -(low part of y)
		total_tide = t0				! Algebraically, c0 should always be zero. Beware overly-aggressive optimizing compilers!
									! Next time around, the lost low part will be added to y in a fresh attempt.
									! Print the current total_tide and the total sum with more decimal places
		total_tide = total_tide + carry_over0

        ! Debugging print statements
        !print *, 'Normalized simulated tide height:', normalized_height
        !print *, 'TRNG: ', rand_num0
		! Print statements with higher precision
		!print '(A, F18.15)', 'TRNG: ', rand_num0
		! Generate random numbers based on normalized glacier sizes
        call random_number(normalized_size)
        normalized_size = ((glacier_size(mod(i, n1) + 1) - min_size) / (max_size - min_size)) + perturbation * rand()
        rand_num1 = normalized_size * rand()
		!total_glacier = total_glacier + rand_num1
		carry_over1 = carry_over1 + total_glacier
		y1 = rand_num1 - c1				! So far, so good: c1 is 0
		t1 = total_glacier + y1			! Alas, sum is big, y small, so low-order digits of y are lost.
		c1 = (t1 - total_glacier) - y1	! (t1-total_glacier) recovers the high part of y; subtracting y recovers -(low part of y)
		total_glacier = t1				! Algebraically, c1 should always be zero. Beware overly-aggressive optimizing compilers!
										! Next time around, the lost low part will be added to y in a fresh attempt.
										! Print the current total_tide and the total sum with more decimal places
		total_glacier = total_glacier + carry_over1

        ! Debugging print statements
        !print *, 'Simulate Glacier Decay:', normalized_size
        !print *, 'GRNG: ', rand_num1
		!
		print '(A, F24.18)', 'TRNG: ', rand_num0
		print '(A, F24.18)', 'GRNG: ', rand_num1
		!total_sum = total_tide + total_glacier
		total_sum = total_sum + total_tide
		carry_over2 = total_tide + total_glacier
		y2 = total_glacier - c2		! So far, so good: c2 is 0
		t2 = total_sum + y2			! Alas, sum is big, y small, so low-order digits of y are lost.
		c2 = (t2 - total_sum) - y2	! (t2-total_sum) recovers the high part of y; subtracting y recovers -(low part of y)
		total_sum = t0				! Algebraically, c should always be zero. Beware overly-aggressive optimizing compilers!
									! Next time around, the lost low part will be added to y in a fresh attempt.
									! Print the current total_tide and the total sum with more decimal places
		total_sum = total_sum + carry_over2
    end do
	!print '(A, F24.18)', 'Total TRNG: ', total_tide
	!print '(A, F24.18)', 'Total GRNG: ', total_glacier
	print '(A, F24.18)', 'Total Sum : ', total_sum

contains
    function rand() result(r)
        real(8) :: r
        call random_number(r)
    end function rand

end program nrng


