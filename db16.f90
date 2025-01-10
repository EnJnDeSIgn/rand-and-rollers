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
        character(len=4), dimension(0:9, 0:9) :: groups
        character(len=4), dimension(10) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
        real :: rand_val
        
        group0 = (/ "1  ", "1  ", "1  ", "1  ", "1  ", "1  ", "0  ", "0  ", "0  ", "0  " /)
        group1 = (/ "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  ", "1  ", "1  ", "0  " /)
        group2 = (/ "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  ", "0  " /)
        group3 = (/ "1  ", "0  ", "0  ", "1  ", "0  ", "1  ", "0  ", "0  ", "1  ", "1  " /)
        group4 = (/ "0  ", "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "0  ", "0  " /)
        group5 = (/ "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "0  ", "1  " /)
        group6 = (/ "0  ", "1  ", "0  ", "1  ", "1  ", "1  ", "0  ", "1  ", "1  ", "0  " /)
        group7 = (/ "1  ", "1  ", "0  ", "0  ", "0  ", "1  ", "1  ", "1  ", "0  ", "0  " /)
        group8 = (/ "1  ", "0  ", "0  ", "0  ", "0  ", "0  ", "0  ", "1  ", "0  ", "0  " /)
        group9 = (/ "0  ", "1  ", "1  ", "1  ", "0  ", "0  ", "1  ", "0  ", "0  ", "1  "/)
        groups(0,:) = group0; groups(1,:) = group1; groups(2,:) = group2; groups(3,:) = group3; groups(4,:) = group4
        groups(5,:) = group5; groups(6,:) = group6; groups(7,:) = group7; groups(8,:) = group8; groups(9,:) = group9
        
        binary = ''
        do i = 1, 30
            call random_number(rand_val)
            selected_group = int(rand_val * 10)
            if (selected_group < 0 .or. selected_group > 9) then
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