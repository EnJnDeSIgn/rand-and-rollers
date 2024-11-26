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
	num14, num15, num16, num17, num18, num19, num20, num21, num22, num23, num24, num25, num26, num27, num28, num29, num30, &
	num31, num32, num33, num34, num35, num36, num37, num38, num39, num40, num41, num42, num43, num44, num45, num46, num47, &
	num48, num49, num50, num51, num52, num53, num54, num55, num56, num57, num58, num59, num60, num61, num62, num63, num64, &
	num65, num66, num67, num68, num69, num70, num71, num72, num73, num74
	integer, allocatable :: base_set(:), seed(:)
	integer, allocatable :: subsets(:, :)
	real :: rand
	character(len=10) :: num0_str, num1_str, num2_str, num3_str, num4_str, num5_str, num6_str, num7_str, num8_str, num9_str, &
	num10_str, num11_str, num12_str, num13_str, num14_str, num15_str, num16_str, num17_str, num18_str, num19_str, num20_str, &
	num21_str, num22_str, num23_str, num24_str, num25_str, num26_str, num27_str, num28_str, num29_str, num30_str, num31_str, &
	num32_str, num33_str, num34_str, num35_str, num36_str, num37_str, num38_str, num39_str, num40_str, num41_str, num42_str, &
	num43_str, num44_str, num45_str, num46_str, num47_str, num48_str, num49_str, num50_str, num51_str, num52_str, num53_str, &
	num54_str, num55_str, num56_str, num57_str, num58_str, num59_str, num60_str, num61_str, num62_str, num63_str, num64_str, &
	num65_str, num66_str, num67_str, num68_str, num69_str, num70_str, num71_str, num72_str, num73_str, num74_str
	character(len=30) :: combined_str0, combined_str1, combined_str2, combined_str3, combined_str4, combined_str5, combined_str6, &
	combined_str7, combined_str8, combined_str9, combined_str10, combined_str11, combined_str12, combined_str13, combined_str14, &
	combined_str15, combined_str16, combined_str17, combined_str18, combined_str19, combined_str20, combined_str21, combined_str22, &
	combined_str23, combined_str24
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
	num0 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num1 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num2 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	! Convert numbers to strings
	write(num0_str, '(I10)') num0 
	write(num1_str, '(I10)') num1 
	write(num2_str, '(I10)') num2
	
	call random_number(rand)
	num3 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num4 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num5 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num3_str, '(I10)') num3
	write(num4_str, '(I10)') num4
	write(num5_str, '(I10)') num5
	
	call random_number(rand)
	num6 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num7 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num8 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num6_str, '(I10)') num6
	write(num7_str, '(I10)') num7
	write(num8_str, '(I10)') num8
	
	call random_number(rand)
	num9 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num10 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num11 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num9_str, '(I10)') num9
	write(num10_str, '(I10)') num10
	write(num11_str, '(I10)') num11
	
	call random_number(rand)
	num12 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num13 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num14 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num12_str, '(I10)') num12
	write(num13_str, '(I10)') num13
	write(num14_str, '(I10)') num14
	
	call random_number(rand)
	num15 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num16 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num17 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num15_str, '(I10)') num15
	write(num16_str, '(I10)') num16
	write(num17_str, '(I10)') num17
	
	call random_number(rand)
	num18 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num19 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num20 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num18_str, '(I10)') num18
	write(num19_str, '(I10)') num19
	write(num20_str, '(I10)') num20
	
	call random_number(rand)
	num21 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num22 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num23 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num21_str, '(I10)') num21
	write(num22_str, '(I10)') num22
	write(num23_str, '(I10)') num23
	
	call random_number(rand)
	num24 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num25 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num26 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num24_str, '(I10)') num24
	write(num25_str, '(I10)') num25
	write(num26_str, '(I10)') num26
	
	call random_number(rand)
	num27 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num28 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num29 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num27_str, '(I10)') num27
	write(num28_str, '(I10)') num28
	write(num29_str, '(I10)') num29
	
	call random_number(rand)
	num30 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num31 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num32 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num30_str, '(I10)') num30
	write(num31_str, '(I10)') num31
	write(num32_str, '(I10)') num32
	
	call random_number(rand)
	num33 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num34 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num35 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num33_str, '(I10)') num33
	write(num34_str, '(I10)') num34
	write(num35_str, '(I10)') num35
	
	call random_number(rand)
	num36 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num37 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num38 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num36_str, '(I10)') num36
	write(num37_str, '(I10)') num37
	write(num38_str, '(I10)') num38
	
	call random_number(rand)
	num39 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num40 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num41 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num39_str, '(I10)') num39
	write(num40_str, '(I10)') num40
	write(num41_str, '(I10)') num41
	
	call random_number(rand)
	num42 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num43 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num44 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num42_str, '(I10)') num42
	write(num43_str, '(I10)') num43
	write(num44_str, '(I10)') num44
	
	call random_number(rand)
	num45 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num46 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num47 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num45_str, '(I10)') num45
	write(num46_str, '(I10)') num46
	write(num47_str, '(I10)') num47
	
	call random_number(rand)
	num48 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num49 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num50 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num48_str, '(I10)') num48
	write(num49_str, '(I10)') num49
	write(num50_str, '(I10)') num50
	
	call random_number(rand)
	num51 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num52 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num53 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num51_str, '(I10)') num51
	write(num52_str, '(I10)') num52
	write(num53_str, '(I10)') num53
	
	call random_number(rand)
	num54 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num55 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num56 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num54_str, '(I10)') num54
	write(num55_str, '(I10)') num55
	write(num56_str, '(I10)') num56
	
	call random_number(rand)
	num57 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num58 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num59 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num57_str, '(I10)') num57
	write(num58_str, '(I10)') num58
	write(num59_str, '(I10)') num59
	
	call random_number(rand)
	num60 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num61 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num62 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num60_str, '(I10)') num60
	write(num61_str, '(I10)') num61
	write(num62_str, '(I10)') num62
	
	call random_number(rand)
	num63 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num64 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num65 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num63_str, '(I10)') num63
	write(num64_str, '(I10)') num64
	write(num65_str, '(I10)') num65
	
	call random_number(rand)
	num66 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num67 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num68 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num66_str, '(I10)') num66
	write(num67_str, '(I10)') num67
	write(num68_str, '(I10)') num68
	
	call random_number(rand)
	num69 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num70 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num71 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num69_str, '(I10)') num69
	write(num70_str, '(I10)') num70
	write(num71_str, '(I10)') num71
	
	call random_number(rand)
	num72 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num73 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	call random_number(rand)
	num74 = mod(seed(i) + int(rand * 1000000000), 1000000000)
	
	write(num72_str, '(I10)') num72
	write(num73_str, '(I10)') num73
	write(num74_str, '(I10)') num74
	
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
	!!!!
	combined_str8 = trim(adjustl(num24_str)) // trim(adjustl(num25_str)) // trim(adjustl(num26_str))
	!!!!
	combined_str9 = trim(adjustl(num27_str)) // trim(adjustl(num28_str)) // trim(adjustl(num29_str))
	!!!!
	combined_str10 = trim(adjustl(num30_str)) // trim(adjustl(num31_str)) // trim(adjustl(num32_str))
	!!!!
	combined_str11 = trim(adjustl(num33_str)) // trim(adjustl(num34_str)) // trim(adjustl(num35_str))
	!!!!
	combined_str12 = trim(adjustl(num36_str)) // trim(adjustl(num37_str)) // trim(adjustl(num38_str))
	!!!!
	combined_str13 = trim(adjustl(num39_str)) // trim(adjustl(num40_str)) // trim(adjustl(num41_str))
	!!!!
	combined_str14 = trim(adjustl(num42_str)) // trim(adjustl(num43_str)) // trim(adjustl(num44_str))
	!!!!
	combined_str15 = trim(adjustl(num45_str)) // trim(adjustl(num46_str)) // trim(adjustl(num47_str))
	!!!!
	combined_str16 = trim(adjustl(num48_str)) // trim(adjustl(num49_str)) // trim(adjustl(num50_str))
	!!!!
	combined_str17 = trim(adjustl(num51_str)) // trim(adjustl(num52_str)) // trim(adjustl(num53_str))
	!!!!
	combined_str18 = trim(adjustl(num54_str)) // trim(adjustl(num55_str)) // trim(adjustl(num56_str))
	!!!!
	combined_str19 = trim(adjustl(num57_str)) // trim(adjustl(num58_str)) // trim(adjustl(num59_str))
	!!!!
	combined_str20 = trim(adjustl(num60_str)) // trim(adjustl(num61_str)) // trim(adjustl(num62_str))
	!!!!
	combined_str21 = trim(adjustl(num63_str)) // trim(adjustl(num64_str)) // trim(adjustl(num65_str))
	!!!!
	combined_str22 = trim(adjustl(num66_str)) // trim(adjustl(num67_str)) // trim(adjustl(num68_str))
	!!!!
	combined_str23 = trim(adjustl(num69_str)) // trim(adjustl(num70_str)) // trim(adjustl(num71_str))
	!!!!
	combined_str24 = trim(adjustl(num72_str)) // trim(adjustl(num73_str)) // trim(adjustl(num74_str))
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