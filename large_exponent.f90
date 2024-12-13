program large_exponent
    implicit none
    real(8) :: base, exponent, log_result
    character(len=30) :: scientific_notation

    base = 2.0_8
    exponent = 1.0E9

    ! Approximate calculation using logarithms
    log_result = exponent * log10(base)

    ! Convert to scientific notation
    write(scientific_notation, '(E30.2)') log_result
    print *, "2^10^9 in scientific notation is approximately: 10^", scientific_notation
end program large_exponent