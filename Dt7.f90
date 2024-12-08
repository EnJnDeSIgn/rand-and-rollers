program Dt7
    use PowerSetModule_EnJnDeSIgn2024_Dt7
    implicit none
    integer :: i, j, n, total_rows, total_subsets
    integer, allocatable :: base_set(:), seed(:)
    integer, allocatable :: subsets(:, :)
    real :: rand
    character(len=30) :: combined_str0, combined_str1
    character(len=10) :: seed_str
    character(len=100) :: file_name
    integer :: unit, io_status, num_parts
    logical :: file_exists

    ! Initialize n (adjust to match sheet size)
    n = 10485760  ! Adjust the number of rows to match the total size

    ! Allocate base_set (assume total number of rows from all parts)
    allocate(base_set(n))

    ! Initialize total_rows to keep track of data read
    total_rows = 0

    ! Number of parts to read (adjust to the actual number of parts created)
    num_parts = 10

    ! Loop to read from multiple parts
    do i = 1, num_parts
        write(file_name, '(A,I0,A)') 'base_set_part', i, '.csv'
        
        ! Check if file exists
        inquire(file=file_name, exist=file_exists)
        if (.not. file_exists) then
            print *, "File does not exist:", file_name
            exit
        else
            print *, "File exists:", file_name
        end if

        ! Use a unique unit number for each file
        unit = 10 + i
        open(unit=unit, file=file_name, status='old', action='read')  ! Open for reading
        
        ! Read data from file
        j = total_rows + 1
        do while (j <= n)
            read(unit, *, iostat=io_status) base_set(j)
            if (io_status /= 0) then
                if (io_status == -1) then
                    ! End of file
                    exit
                else
                    print *, "Error reading file:", file_name, "at row", j, " IOSTAT:", io_status
                    exit
                end if
            end if
            j = j + 1
        end do
        close(unit)
        
        total_rows = j - 1  ! Update total_rows based on data read
    end do
	
	! Debugging: Print the first and last 10 values from base_set
	!print *, "First 10 values from base_set:"
	!	do i = 1, min(10, total_rows)
	!		print *, base_set(i)
	!	end do
	!print *, "Last 10 values from base_set:"
	!	do i = max(1, total_rows-9), total_rows
	!		print *, base_set(i)
	!	end do

    ! Call PowerSET_EnJnDeSIgn2024 subroutine
    call PowerSET_EnJnDeSIgn2024(base_set, total_rows, subsets)

    total_subsets = size(subsets, 1)
    allocate(seed(1:total_rows))
    do i = 1, total_rows
        call random_number(rand)
        seed(i) = mod(int(rand * 1000000000), 1000000000)
    end do

    call random_number(rand)
    combined_str0 = ""
    do i = 1, 3
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') seed(i)
        combined_str0 = trim(adjustl(combined_str0)) // trim(adjustl(seed_str))
    end do

    call random_number(rand)
    combined_str1 = ""
    do i = 4, 6  ! Change the range to use different values from the seed array
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') seed(i)
        combined_str1 = trim(adjustl(combined_str1)) // trim(adjustl(seed_str))
    end do

    ! Print combined string
    print *, combined_str0
    print *, combined_str1

end program Dt7