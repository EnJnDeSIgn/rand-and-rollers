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

    subroutine read_csv(file_name, data, n)
        character(len=*), intent(in) :: file_name
        integer, allocatable, intent(out) :: data(:)
        integer, intent(in) :: n
        integer :: unit, i, io_status

        ! Allocate data array
        allocate(data(n))

        ! Open the file
        open(unit=10, file=file_name, status='old', action='read', iostat=io_status)
        if (io_status /= 0) then
            print *, "Error opening file:", file_name
            stop
        end if

        ! Read data from file
        do i = 1, n
            read(unit, '(I10)', iostat=io_status) data(i)
            if (io_status /= 0) then
                print *, "Error reading file:", file_name, "at row", i
                stop
            end if
        end do

        ! Close the file
        close(unit)
    end subroutine read_csv
end module PowerSetModule_EnJnDeSIgn2024_Dt7