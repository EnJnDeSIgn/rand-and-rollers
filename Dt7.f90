module PowerSetModule_EnJnDeSIgn2024_Dt7
    implicit none
contains
    subroutine PowerSET_EnJnDeSIgn2024(set, n, subsets)
        integer, intent(in) :: set(:)
        integer, intent(in) :: n
		integer, allocatable, intent(out) :: subsets(:, :)
        integer :: i, subset, total_subsets

        ! Calculate total number of subsets (2^n)
        total_subsets = 2**n
        !print *, "The power set has ", total_subsets, " subsets."

		! Allocate array to store subsets
        allocate(subsets(total_subsets, n))
		! Generate each subset
        do subset = 0, total_subsets - 1
            do i = 1, n
                if (btest(subset, i-1)) then
                    subsets(subset + 1, i) = set(i)
                else
                    subsets(subset + 1, i) = 0
                end if
            end do
        end do
    end subroutine PowerSET_EnJnDeSIgn2024
end module PowerSetModule_EnJnDeSIgn2024_Dt7
program Dt7
	use PowerSetModule_EnJnDeSIgn2024_Dt7
	implicit none
	integer :: num0, num1, num2, n, total_subsets, i, num3, num4, num5, num6, num7, num8
	integer, allocatable :: base_set(:), seed(:)
	integer, allocatable :: subsets(:, :)
	real :: rand
	character(len=10) :: num0_str, num1_str, num2_str, num3_str, num4_str, num5_str, num6_str, num7_str, num8_str
	character(len=30) :: combined_str0, combined_str1, combined_str2
	integer :: clock_seed(8)
	
	call date_and_time(values=clock_seed)
	
	! Use system time as seed
	call random_seed(put=clock_seed)
	
	n = 1000000000
	
	! Generate base set with random numbers within a specific range
	allocate(base_set(n))
	do i = 1, n
		call random_number(rand)
		base_set(i) = mod(int(rand * 1000000000), 1000000000)
	end do    
	
	call PowerSET_EnJnDeSIgn2024(base_set, n, subsets)
	
	total_subsets = size(subsets, 1)
    allocate(seed(1:n))	
	do i = 1, n
		seed(i) = 0
		call random_number(rand)
		seed(i) = mod(int(rand * 1000000000), 1000000000)
		! Ensure within 0-4 range
		!if (seed(i) > 4 .or. seed(i) < 0) then
			!seed(i) = 0
		!end if
	end do
	
	call random_number(rand)
	num0 = int(rand * 1000000000)
	
	call random_number(rand)
	num1 = int(rand * 1000000000)
	
	call random_number(rand)
	num2 = int(rand * 1000000000)
	
	! Convert numbers to strings
	write(num0_str, '(I10)') num0 
	write(num1_str, '(I10)') num1 
	write(num2_str, '(I10)') num2
	
	call random_number(rand)
	num3 = int(rand * 1000000000)
	call random_number(rand)
	num4 = int(rand * 1000000000)
	call random_number(rand)
	num5 = int(rand * 1000000000)
	
	write(num3_str, '(I10)') num3
	write(num4_str, '(I10)') num4
	write(num5_str, '(I10)') num5
	
	call random_number(rand)
	num6 = int(rand * 1000000000)
	call random_number(rand)
	num7 = int(rand * 1000000000)
	call random_number(rand)
	num8 = int(rand * 1000000000)
	
	write(num6_str, '(I10)') num6
	write(num7_str, '(I10)') num7
	write(num8_str, '(I10)') num8
	
	! Combine strings to form a 30-digit number 
	combined_str0 = trim(adjustl(num0_str)) // trim(adjustl(num1_str)) // trim(adjustl(num2_str))
	!print *, num0, num1, num2
	combined_str1 = trim(adjustl(num3_str)) // trim(adjustl(num4_str)) // trim(adjustl(num5_str))
	!!!!
	combined_str2 = trim(adjustl(num6_str)) // trim(adjustl(num7_str)) // trim(adjustl(num8_str))
	print *, combined_str0
	print *, combined_str1
	print *, combined_str2
end program Dt7