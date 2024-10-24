module PowerSetModule_EnJnDeSIgn2024
    implicit none
contains
    subroutine PowerSET_EnJnDeSIgn2024(set, n)
        integer, intent(in) :: set(:)
        integer, intent(in) :: n
        integer :: i, subset, total_subsets

        ! Calculate total number of subsets (2^n)
        total_subsets = 2**n
        print *, "The power set has ", total_subsets, " subsets."

        ! Generate and print each subset
        print *, "Subsets are:"
        do subset = 0, total_subsets - 1
            print *, "Subset ", subset, ": {",
            do i = 1, n
                if (btest(subset, i-1)) print *, set(i),
            end do
            print *, "}"
        end do
    end subroutine PowerSET_EnJnDeSIgn2024
end module PowerSetModule_EnJnDeSIgn2024

program Main
    use PowerSetModule_EnJnDeSIgn2024
    implicit none
    integer, allocatable :: data(:)
    integer :: n

    ! Define the set and its size
    n = 3
    allocate(data(n))
    data = [1, 2, 3]

    call PowerSET_EnJnDeSIgn2024(data, n)

    deallocate(data)
end program Main