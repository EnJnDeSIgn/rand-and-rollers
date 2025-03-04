program call_python
  implicit none
  integer :: istat

  print *, "Running Python script to generate key..."
  call execute_command_line("python generate_key.py", exitstat=istat)
  if (istat /= 0) then
    print *, "Error running Python script."
    stop
  end if

  ! Continue with Fortran code
end program call_python