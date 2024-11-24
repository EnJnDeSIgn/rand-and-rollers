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
	integer :: num0, num1, num2, n, total_subsets, i, num3, num4, num5, num6, num7, num8, num9, num10, num11, num12, num13, &
	num14, num15, num16, num17, num18, num19, num20, num21, num22, num23
	integer, allocatable :: base_set(:), seed(:)
	integer, allocatable :: subsets(:, :)
	real :: rand
	character(len=10) :: num0_str, num1_str, num2_str, num3_str, num4_str, num5_str, num6_str, num7_str, num8_str, num9_str, &
	num10_str, num11_str, num12_str, num13_str, num14_str, num15_str, num16_str, num17_str, num18_str, num19_str, num20_str, &
	num21_str, num22_str, num23_str
	character(len=30) :: combined_str0, combined_str1, combined_str2, combined_str3, combined_str4, combined_str5, combined_str6, &
	combined_str7
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
	
	call random_number(rand)
	num9 = int(rand * 1000000000)
	call random_number(rand)
	num10 = int(rand * 1000000000)
	call random_number(rand)
	num11 = int(rand * 1000000000)
	
	write(num9_str, '(I10)') num9
	write(num10_str, '(I10)') num10
	write(num11_str, '(I10)') num11
	
	call random_number(rand)
	num12 = int(rand * 1000000000)
	call random_number(rand)
	num13 = int(rand * 1000000000)
	call random_number(rand)
	num14 = int(rand * 1000000000)
	
	write(num12_str, '(I10)') num12
	write(num13_str, '(I10)') num13
	write(num14_str, '(I10)') num14
	
	call random_number(rand)
	num15 = int(rand * 1000000000)
	call random_number(rand)
	num16 = int(rand * 1000000000)
	call random_number(rand)
	num17 = int(rand * 1000000000)
	
	write(num15_str, '(I10)') num15
	write(num16_str, '(I10)') num16
	write(num17_str, '(I10)') num17
	
	call random_number(rand)
	num18 = int(rand * 1000000000)
	call random_number(rand)
	num19 = int(rand * 1000000000)
	call random_number(rand)
	num20 = int(rand * 1000000000)
	
	write(num18_str, '(I10)') num18
	write(num19_str, '(I10)') num19
	write(num20_str, '(I10)') num20
	
	call random_number(rand)
	num21 = int(rand * 1000000000)
	call random_number(rand)
	num22 = int(rand * 1000000000)
	call random_number(rand)
	num23 = int(rand * 1000000000)
	
	write(num21_str, '(I10)') num21
	write(num22_str, '(I10)') num22
	write(num23_str, '(I10)') num23
	
	! Combine strings to form a 30-digit number 
	combined_str0 = trim(adjustl(num0_str)) // trim(adjustl(num1_str)) // trim(adjustl(num2_str))
	!print *, num0, num1, num2
	combined_str1 = trim(adjustl(num3_str)) // trim(adjustl(num4_str)) // trim(adjustl(num5_str))
	!!!!
	combined_str2 = trim(adjustl(num6_str)) // trim(adjustl(num7_str)) // trim(adjustl(num8_str))
	!!!!
	combined_str3 = trim(adjustl(num9_str)) // trim(adjustl(num10_str)) // trim(adjustl(num11_str))
	!!!!
	combined_str4 = trim(adjustl(num12_str)) // trim(adjustl(num13_str)) // trim(adjustl(num14_str))
	!!!!
	combined_str5 = trim(adjustl(num15_str)) // trim(adjustl(num16_str)) // trim(adjustl(num17_str))
	!!!!
	combined_str6 = trim(adjustl(num18_str)) // trim(adjustl(num19_str)) // trim(adjustl(num20_str))
	!!!!
	combined_str7 = trim(adjustl(num21_str)) // trim(adjustl(num22_str)) // trim(adjustl(num23_str))
	print *, combined_str0
	print *, combined_str1
	print *, combined_str2
	print *, combined_str3
	print *, combined_str4
	print *, combined_str5
	print *, combined_str6
	print *, combined_str7
end program Dt7