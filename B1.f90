program CompareBinary_EnJnDeSIgn2024
    implicit none
    character(len=30) :: binary1, binary2
    integer :: int1, int2
	
	! Function protypes
	!integer function bin2dec(binary)
	!	implicit none
	!	character(len=*), intent(in) :: binary
	!end function bin2dec

    ! Example binary numbers (replace these with actual output from Db4.exe)
    ! binary1 = "011001011101011000000110011000"
    ! binary2 = "011001011101011000000110011001"
	call execute_command_line('Db4.exe > output1.txt')
	call execute_command_line('Db4.exe > output2.txt')
	
	! Open the output files and read the binary numbers
	open(unit=10, file='output1.txt', status='old')
	read(10, ' (A30)') binary1
	close(10)
	
	open(unit=11, file='output2.txt', status='old')
	read(11, ' (A30)') binary2
	close(11)
	
	! Print the binary numbers being compared
	print *, "Binary1: ", binary1
	print *, "Binary2: ", binary2

    ! Convert binary strings to integers
    int1 = bin2dec(binary1)
    int2 = bin2dec(binary2)

    ! Compare the integers
    if (int1 == int2) then
        print *, "The binary numbers are equal."
    else if (int1 > int2) then
        print *, "Binary1 is greater than Binary2."
    else
        print *, "Binary1 is less than Binary2."
    end if

contains

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

end program compareBinary_EnJnDeSIgn2024