program D2b4_EnJnDeSIgn2024
    implicit none
    character(len=30) :: binary1, binary2, result
    integer :: int1, int2, difference, sum, or_result, and_result, xor_result
    call random_seed()
	
    ! Function prototypes
    !integer function bin2dec(binary)
    !    implicit none
    !    character(len=*), intent(in) :: binary
    !end function bin2dec

    !character(len=30) function dec2bin(decimal)
    !    implicit none
    !    integer, intent(in) :: decimal
    !end function dec2bin

    ! Example binary numbers (replace these with actual output from Db4.exe)
    ! binary1 = "011001011101011000000110011000"
    ! binary2 = "011001011101011000000110011001"    
    ! Example binary numbers (replace these with actual output from Db4.exe)
    
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
        integer :: i
        real :: rand_val
        binary = ''
        do i = 1, 30
            call random_number(rand_val)
            if (rand_val < 0.5) then
                binary(i:i) = '0'
            else
                binary(i:i) = '1'
            end if
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

end program D2b4_EnJnDeSIgn2024