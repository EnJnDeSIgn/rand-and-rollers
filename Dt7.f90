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
	integer :: num0, num1, num2, n, total_subsets, i
	integer, allocatable :: base_set(:), seed(:)
	integer, allocatable :: subsets(:, :)
	real :: rand
	character(len=10) :: num0_str, num1_str, num2_str
	character(len=30) :: combined_str
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
		call random_number(rand)
		seed(i) = mod(int(rand * total_subsets) + 1, 2147483647)  ! Use varied elements, ensure fit within seed range
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
	
	! Combine strings to form a 30-digit number 
	combined_str = trim(adjustl(num0_str)) // trim(adjustl(num1_str)) // trim(adjustl(num2_str))
	!print *, num0, num1, num2
	print *, combined_str
end program Dt7