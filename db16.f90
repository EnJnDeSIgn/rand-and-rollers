program db16
    implicit none
    character(len=30) :: binary1, binary2, result
    integer :: int1, int2, difference, sum, or_result, and_result, xor_result
    call random_seed()

    ! Generate random 30-bit binary numbers
    call generate_random_binary(binary1)
    call generate_random_binary(binary2)
    
    ! Print the binary numbers being compared
    print *, "Binary1: ", binary1
    print *, "Binary2: ", binary2

    ! Convert binary strings to integers
    int1 = bin2dec(binary1)
    int2 = bin2dec(binary2)

    ! Compare the integers
    if (int1 == int2) then
        print *, "The binary numbers are equal."
        ! Check if the sum will be too large
        if (binary1(1:1) == '1' .and. binary2(1:1) == '1') then
            print *, "Error: Sum of binary numbers will be too large."
        else
            ! Add the integers
            sum = int1 + int2
            ! Convert the sum back to binary
            result = dec2bin(sum)
            print *, "Sum of binary numbers:        ", result
        end if
    else if (int1 > int2) then
        print *, "Binary1 is greater than Binary2."
        ! Subtract the integers
        difference = int1 - int2
        ! Convert the difference back to binary
        result = dec2bin(difference)
        print *, "Difference of binary numbers: ", result
        ! Check if the sum is too large
        if (binary1(1:1) == '1' .and. binary2(1:1) == '1') then
            print *, "Error: Sum of binary numbers will be too large."
        else
            ! Add the integers
            sum = int1 + int2
            ! Convert the sum back to binary
            result = dec2bin(sum)
            print *, "Sum of binary numbers:        ", result
        end if
    else
        print *, "Binary1 is less than Binary2."
        ! Subtract the integers
        difference = int2 - int1
        ! Convert the difference back to binary
        result = dec2bin(difference)
        print *, "Difference of binary numbers: ", result
        ! Check if the sum is too large
        if (binary1(1:1) == '1' .and. binary2(1:1) == '1') then
            print *, "Error: Sum of binary numbers will be too large."
        else
            ! Add the integers
            sum = int2 + int1
            ! Convert the sum back to binary
            result = dec2bin(sum)
            print *, "Sum of binary numbers:        ", result
        end if
    end if

    ! Calculate OR, AND, XOR
    or_result = ior(int1, int2)
    and_result = iand(int1, int2)
    xor_result = ieor(int1, int2)

    ! Convert results to binary strings
    print *, "OR of binary numbers:  ", dec2bin(or_result)
    print *, "AND of binary numbers: ", dec2bin(and_result)
    print *, "XOR of binary numbers: ", dec2bin(xor_result)

contains

    ! Function to generate a random 30-bit binary number
    subroutine generate_random_binary(binary)
        implicit none
        character(len=30), intent(out) :: binary
        integer :: i, selected_group, selected_number
        character(len=4), dimension(0:99, 0:9) :: groups
        character(len=4), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9, &
										  &group10, group11, group12, group13, group14, group15, group16, group17, group18, group19, &
										  &group20, group21, group22, group23, group24, group25, group26, group27, group28, group29, &
										  &group30, group31, group32, group33, group34, group35, group36, group37, group38, group39, &
										  &group40, group41, group42, group43, group44, group45, group46, group47, group48, group49, &
										  &group50, group51, group52, group53, group54, group55, group56, group57, group58, group59, &
										  &group60, group61, group62, group63, group64, group65, group66, group67, group68, group69, &
										  &group70, group71, group72, group73, group74, group75, group76, group77, group78, group79, &
										  &group80, group81, group82, group83, group84, group85, group86, group87, group88, group89, &
										  &group90, group91, group92, group93, group94, group95, group96, group97, group98, group99
        real :: rand_val
        
        ! Initialize group arrays (same as before)
    group0 = (/ "1  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  " /)
    group1 = (/ "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "0  " /)
    group2 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  ", "0  " /)
    group3 = (/ "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  " /)
    group4 = (/ "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  ", "0  " /)
    group5 = (/ "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "0  ", "1  " /)
    group6 = (/ "0  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  " /)
    group7 = (/ "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  ", "0  ", "0  " /)
    group8 = (/ "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  ", "0  ", "0  " /)
    group9 = (/ "0  ", "1  ", "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  " /)
	! Initialize group arrays (same as before)
    group10 = (/ "0  ", "1  ", "0  ", "1  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  " /)
    group11 = (/ "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    group12 = (/ "0  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  " /)
    group13 = (/ "1  ", "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "0  ", "0  ", "0  " /)
    group14 = (/ "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  " /)
    group15 = (/ "0  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  " /)
    group16 = (/ "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "0  ", "1  " /)
    group17 = (/ "0  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  ", "0  ", "1  ", "1  " /)
    group18 = (/ "1  ", "1  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  " /)
    group19 = (/ "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  ", "1  ", "1  " /)
	! Initialize group arrays (same as before)
    group20 = (/ "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "1  " /)
    group21 = (/ "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  " /)
    group22 = (/ "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "1  ", "1  ", "1  " /)
    group23 = (/ "0  ", "1  ", "1  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  " /)
    group24 = (/ "0  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  " /)
    group25 = (/ "0  ", "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    group26 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  " /)
    group27 = (/ "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  " /)
    group28 = (/ "1  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "0  " /)
    group29 = (/ "1  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  " /)	!0-0
	! Initialize group arrays (same as before)
    group30 = (/ "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "0  ", "1  ", "0  ", "1  " /)
    group31 = (/ "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  " /)
    group32 = (/ "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  " /)
    group33 = (/ "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "0  " /)
    group34 = (/ "0  ", "0  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  ", "0  " /)	!0-1
    group35 = (/ "0  ", "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  ", "1  ", "1  " /)
    group36 = (/ "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    group37 = (/ "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  " /)
    group38 = (/ "1  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  ", "0  " /)
    group39 = (/ "0  ", "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  ", "1  ", "0  " /)
	! Initialize group arrays (same as before)
    group40 = (/ "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  " /)		! I like this one copliot it's like the samllest largest number....
    group41 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "0  " /)
    group42 = (/ "0  ", "0  ", "1  ", "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "1  " /)		! this one is just the largest so watch out if adding...
    group43 = (/ "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  ", "0  ", "0  " /)		! Did some rand location fix for Db8.exe above here
    group44 = (/ "0  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  " /)
    group45 = (/ "0  ", "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  " /)
    group46 = (/ "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  " /)
    group47 = (/ "0  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "1  " /)
    group48 = (/ "0  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "1  ", "0  ", "0  " /)
    group49 = (/ "1  ", "0  ", "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  " /)
	! Initialize group arrays (same as before)
    group50 = (/ "0  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  " /)
    group51 = (/ "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  " /)
    group52 = (/ "1  ", "0  ", "0  ", "1  ", "1  ", "0  ", "0  ", "1  ", "1  ", "0  " /)
    group53 = (/ "1  ", "1  ", "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  " /)
    group54 = (/ "0  ", "1  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  " /)
    group55 = (/ "0  ", "0  ", "1  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "0  " /)
    group56 = (/ "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "1  ", "1  ", "0  ", "0  " /)
    group57 = (/ "1  ", "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "0  " /)
    group58 = (/ "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    group59 = (/ "0  ", "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  " /)
	! Initialize group arrays (same as before)
    group60 = (/ "0  ", "0  ", "1  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "1  " /)
    group61 = (/ "1  ", "0  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  ", "1  " /)
    group62 = (/ "1  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "0  ", "1  " /)
    group63 = (/ "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  " /)
    group64 = (/ "1  ", "0  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  " /)
    group65 = (/ "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  " /)
    group66 = (/ "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  " /)
    group67 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    group68 = (/ "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  " /)
    group69 = (/ "1  ", "0  ", "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  "/)
	! Initialize group arrays (same as before)!!!! New Set's, No not the god I need too bribe all the time in the street....
    group70 = (/ "1  ", "1  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  " /)
    group71 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    group72 = (/ "0  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "1  " /)
    group73 = (/ "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "0  ", "0  ", "0  " /)
    group74 = (/ "1  ", "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  ", "0  " /)
    group75 = (/ "0  ", "1  ", "1  ", "0  ", "1  ", "0  ", "0  ", "0  ", "0  ", "1  " /)
    group76 = (/ "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  " /)
    group77 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  " /)
    group78 = (/ "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "1  ", "1  " /)
    group79 = (/ "1  ", "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  " /)
	! Initialize group arrays (same as before)
    group80 = (/ "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  ", "0  " /)
    group81 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "1  ", "1  " /)
    group82 = (/ "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  ", "1  " /)
    group83 = (/ "1  ", "0  ", "1  ", "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  " /)
    group84 = (/ "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "0  " /)
    group85 = (/ "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  ", "0  " /)
    group86 = (/ "1  ", "0  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  " /)
    group87 = (/ "0  ", "0  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  ", "1  ", "0  " /)
    group88 = (/ "1  ", "1  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  " /)
    group89 = (/ "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "1  " /)
	! Initialize group arrays (same as before)
    group90 = (/ "1  ", "1  ", "0  ", "0  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  " /)
    group91 = (/ "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  ", "1  " /)
    group92 = (/ "0  ", "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  ", "1  " /)
    group93 = (/ "1  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  " /)
    group94 = (/ "0  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  ", "0  " /)
    group95 = (/ "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "1  " /)
    group96 = (/ "0  ", "1  ", "0  ", "1  ", "0  ", "1  ", "1  ", "0  ", "0  ", "1  " /)
    group97 = (/ "0  ", "0  ", "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  " /)
    group98 = (/ "1  ", "0  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "1  ", "0  " /)
    group99 = (/ "1  ", "1  ", "0  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  " /)
    groups(0,:) = group0; groups(1,:) = group1; groups(2,:) = group2; groups(3,:) = group3; groups(4,:) = group4
    groups(5,:) = group5; groups(6,:) = group6; groups(7,:) = group7; groups(8,:) = group8; groups(9,:) = group9
	groups(10,:) = group10; groups(11,:) = group11; groups(12,:) = group12; groups(13,:) = group13; groups(14,:) = group14
    groups(15,:) = group15; groups(16,:) = group16; groups(17,:) = group17; groups(18,:) = group18; groups(19,:) = group19
	groups(20,:) = group20; groups(21,:) = group21; groups(22,:) = group22; groups(23,:) = group23; groups(24,:) = group24
    groups(25,:) = group25; groups(26,:) = group26; groups(27,:) = group27; groups(28,:) = group28; groups(29,:) = group29
	groups(30,:) = group30; groups(31,:) = group31; groups(32,:) = group32; groups(33,:) = group33; groups(34,:) = group34
    groups(35,:) = group35; groups(36,:) = group36; groups(37,:) = group37; groups(38,:) = group38; groups(39,:) = group39
	groups(40,:) = group40; groups(41,:) = group41; groups(42,:) = group42; groups(43,:) = group43; groups(44,:) = group44
    groups(45,:) = group45; groups(46,:) = group46; groups(47,:) = group47; groups(48,:) = group48; groups(49,:) = group49
	groups(50,:) = group50; groups(51,:) = group51; groups(52,:) = group52; groups(53,:) = group53; groups(54,:) = group54
    groups(55,:) = group55; groups(56,:) = group56; groups(57,:) = group57; groups(58,:) = group58; groups(59,:) = group59
	groups(60,:) = group60; groups(61,:) = group61; groups(62,:) = group62; groups(63,:) = group63; groups(64,:) = group64
    groups(65,:) = group65; groups(66,:) = group66; groups(67,:) = group67; groups(68,:) = group68; groups(69,:) = group69
	groups(70,:) = group70; groups(71,:) = group71; groups(72,:) = group72; groups(73,:) = group73; groups(74,:) = group74
    groups(75,:) = group75; groups(76,:) = group76; groups(77,:) = group77; groups(78,:) = group78; groups(79,:) = group79
	groups(80,:) = group80; groups(81,:) = group81; groups(82,:) = group82; groups(83,:) = group83; groups(84,:) = group84
    groups(85,:) = group85; groups(86,:) = group86; groups(87,:) = group87; groups(88,:) = group88; groups(89,:) = group89
	groups(90,:) = group90; groups(91,:) = group91; groups(92,:) = group92; groups(93,:) = group93; groups(94,:) = group94
    groups(95,:) = group95; groups(96,:) = group96; groups(97,:) = group97; groups(98,:) = group98; groups(99,:) = group99
        
        binary = ''
        do i = 1, 30
            call random_number(rand_val)
            selected_group = int(rand_val * 100)
            if (selected_group < 0 .or. selected_group > 99) then
                print *, "Error: selected_group out of range"
                stop
            end if

            call random_number(rand_val)
            selected_number = int(rand_val * 10)
            if (selected_number < 0 .or. selected_number > 9) then
                print *, "Error: selected_number out of range"
                stop
            end if
            
            binary(i:i) = trim(adjustl(groups(selected_group, selected_number)))
        end do
    end subroutine generate_random_binary

    ! Function to convert binary string to integer
    integer function bin2dec(binary)
        implicit none
        character(len=*), intent(in) :: binary
        integer :: i, len
        bin2dec = 0
        len = len_trim(binary)
        do i = 1, len
            if (binary(i:i) == '1') then
                bin2dec = bin2dec + 2**(len-i)
            end if
        end do
    end function bin2dec

    ! Function to convert integer to binary string
    character(len=30) function dec2bin(decimal)
        implicit none
        integer, intent(in) :: decimal
        integer :: i, temp
        character(len=30) :: bin
        bin = '000000000000000000000000000000'
        temp = decimal
        i = 30
        do while (temp > 0)
            if (mod(temp, 2) == 1) then
                bin(i:i) = '1'
            end if
            temp = temp / 2
            i = i - 1
        end do
        dec2bin = bin
    end function dec2bin

end program db16