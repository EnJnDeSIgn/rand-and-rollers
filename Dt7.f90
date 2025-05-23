program Dt7
    use PowerSetModule_EnJnDeSIgn2024_Dt7
    use omp_lib
    implicit none
    integer :: i, j, n, rows_read, total_rows, total_subsets, rows_in_last_part
    integer, allocatable :: base_set0(:), base_set1(:), seed(:)
    integer, allocatable :: subsets(:, :)
    real :: rand
    character(len=30) :: combined_str0, combined_str1, combined_str2, combined_str3, combined_str4, combined_str5, combined_str6
    character(len=30) :: combined_str7, combined_str8, combined_str9, combined_str10, combined_str11, combined_str12, combined_str13
    character(len=30) :: combined_str14, combined_str15, combined_str16, combined_str17, combined_str18, combined_str19, combined_str20
    character(len=30) :: combined_str21, combined_str22, combined_str23, combined_str24
    character(len=10) :: seed_str
    character(len=100) :: file_name
    integer :: unit, io_status, num_parts
    logical :: file_exists

    ! Initialize n (adjust to match sheet size)
    n = 1048576  ! Adjust the number of rows to match the total size
	
	! Explanation of subsets 
	! The concept of subsets comes from combinatorics in mathematics.
	! Each element in the set can either be included or excluded from a subset, leading to 2 choices (include or exclude) per element.
	! Therefore, for n elements, the total number of subsets is 2^n.
	! Practical Insight
	! For a set of 1 billion elements:
	! The theoretical number of subsets is 2^(10^9).
	! This number is astronomically large, far beyond the scope of practical computation or storage.
	! Why It Matters
	! Understanding subsets helps in various fields like computer science, particularly in data structure design, algorithm optimization,
	! and problem-solving techniques like dynamic programming and combinatorial optimization.
	! 2^1000000000 in scientific notation is approximately: 10^301029995.66
	! 2^10^9 in scientific notation is approximately: 10^.3010299956639811992645264E+09

    ! Initialize total_rows to keep track of data read
    total_rows = 0

    ! Number of parts to read (adjust to the actual number of parts created)
    num_parts = 954
    rows_in_last_part = 1000000000 - (num_parts - 1) * n  ! Rows in the last part

    ! Allocate base_set (assume total number of rows from all parts)
    allocate(base_set0(n))
    allocate(base_set1(rows_in_last_part))

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
        if (i == num_parts) then
            ! Last part, read only remaining rows
            do j = 1, rows_in_last_part
                read(unit, *, iostat=io_status) base_set1(j)
                if (io_status == -1) then
                    exit
                elseif (io_status /= 0) then
                    print *, "Error reading file:", file_name, "at row", j, " IOSTAT:", io_status
                    exit
                end if
            end do
            total_rows = total_rows + rows_in_last_part
        else
            do j = 1, n
                read(unit, *, iostat=io_status) base_set0(j)
                if (io_status == -1) then
                    exit
                elseif (io_status /= 0) then
                    print *, "Error reading file:", file_name, "at row", j, " IOSTAT:", io_status
                    exit
                end if
            end do
            total_rows = total_rows + n
        end if
        close(unit)
    end do
    
    ! Print total number of rows read
    print *, "Total number of rows read:", total_rows

    ! Call PowerSET_EnJnDeSIgn2024 subroutine
    call PowerSET_EnJnDeSIgn2024(base_set0, total_rows, subsets)
    total_subsets = size(subsets, 1)
    allocate(seed(1:total_rows))
    do i = 1, total_rows
        call random_number(rand)
        seed(i) = mod(int(rand * 1000000000), 1000000000)
    end do

    combined_str0 = ""
    do i = 1, 3
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str0 = trim(adjustl(combined_str0)) // trim(adjustl(seed_str))
    end do

    combined_str1 = ""
    do i = 4, 6  ! Change the range to use different values from the seed array
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str1 = trim(adjustl(combined_str1)) // trim(adjustl(seed_str))
    end do
	
    combined_str2 = ""
    do i = 7, 9
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str2 = trim(adjustl(combined_str2)) // trim(adjustl(seed_str))
    end do
	
    combined_str3 = ""
    do i = 10, 12
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str3 = trim(adjustl(combined_str3)) // trim(adjustl(seed_str))
    end do
	
    combined_str4 = ""
    do i = 13, 15
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str4 = trim(adjustl(combined_str4)) // trim(adjustl(seed_str))
    end do
	
    combined_str5 = ""
    do i = 16, 18
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str5 = trim(adjustl(combined_str5)) // trim(adjustl(seed_str))
    end do
	
    combined_str6 = ""
    do i = 19, 21
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str6 = trim(adjustl(combined_str6)) // trim(adjustl(seed_str))
    end do
	
    combined_str7 = ""
    do i = 22, 24
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str7 = trim(adjustl(combined_str7)) // trim(adjustl(seed_str))
    end do
	
    combined_str8 = ""
    do i = 25, 27
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str8 = trim(adjustl(combined_str8)) // trim(adjustl(seed_str))
    end do
	
    combined_str9 = ""
    do i = 28, 30
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str9 = trim(adjustl(combined_str9)) // trim(adjustl(seed_str))
    end do
	
    combined_str10 = ""
    do i = 31, 33
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str10 = trim(adjustl(combined_str10)) // trim(adjustl(seed_str))
    end do
	
    combined_str11 = ""
    do i = 34, 36
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str11 = trim(adjustl(combined_str11)) // trim(adjustl(seed_str))
    end do
	
    combined_str12 = ""
    do i = 37, 39
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str12 = trim(adjustl(combined_str12)) // trim(adjustl(seed_str))
    end do
	
    combined_str13 = ""
    do i = 40, 42
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str13 = trim(adjustl(combined_str13)) // trim(adjustl(seed_str))
    end do
	
    combined_str14 = ""
    do i = 43, 45
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str14 = trim(adjustl(combined_str14)) // trim(adjustl(seed_str))
    end do
	
    combined_str15 = ""
    do i = 46, 48
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str15 = trim(adjustl(combined_str15)) // trim(adjustl(seed_str))
    end do
	
    combined_str16 = ""
    do i = 49, 51
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str16 = trim(adjustl(combined_str16)) // trim(adjustl(seed_str))
    end do
	
    combined_str17 = ""
    do i = 52, 54
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str17 = trim(adjustl(combined_str17)) // trim(adjustl(seed_str))
    end do
	
    combined_str18 = ""
    do i = 55, 57
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str18 = trim(adjustl(combined_str18)) // trim(adjustl(seed_str))
    end do
	
    combined_str19 = ""
    do i = 58, 60
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str19 = trim(adjustl(combined_str19)) // trim(adjustl(seed_str))
    end do
	
    combined_str20 = ""
    do i = 61, 63
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str20 = trim(adjustl(combined_str20)) // trim(adjustl(seed_str))
    end do
	
    combined_str21 = ""
    do i = 64, 66
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str21 = trim(adjustl(combined_str21)) // trim(adjustl(seed_str))
    end do
	
    combined_str22 = ""
    do i = 67, 69
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str22 = trim(adjustl(combined_str22)) // trim(adjustl(seed_str))
    end do
	
    combined_str23 = ""
    do i = 70, 72
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str23 = trim(adjustl(combined_str23)) // trim(adjustl(seed_str))
    end do
	
    combined_str24 = ""
    do i = 73, 75
        call random_number(rand)  ! Add this to change the random number sequence
        write(seed_str, '(I10)') mod(seed(i), 1000000000)
        combined_str24 = trim(adjustl(combined_str24)) // trim(adjustl(seed_str))
    end do

	print *
	print *
	print *
    ! Print combined string
    print *, combined_str0
    print *, combined_str1
	print *, combined_str2
	print *, combined_str3
	print *, combined_str4
	print *, combined_str5
	print *, combined_str6
	print *, combined_str7
	print *, combined_str8
	print *, combined_str9
	print *, combined_str10
	print *, combined_str11
	print *, combined_str12
	print *, combined_str13
	print *, combined_str14
	print *, combined_str15
	print *, combined_str16
	print *, combined_str17
	print *, combined_str18
	print *, combined_str19
	print *, combined_str20
	print *, combined_str21
	print *, combined_str22
	print *, combined_str23
	print *, combined_str24

end program Dt7