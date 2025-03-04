module encryption_module
  use iso_fortran_env, only: int32, int64
  implicit none
  private
  public :: encrypt_message, decrypt_message, derive_key_from_password, password_char_pair, initialize_groups

  type, public :: password_char_pair
    character(len=100) :: password
    character(len=1) :: char
  end type password_char_pair

  character(len=2), allocatable, public :: groups(:,:)

contains

  subroutine initialize_groups()
    character(len=2) :: tmp_groups(32, 5)
    tmp_groups = reshape([ &
      "4 ", "+ ", "5 ", "8 ", "a ", &
      "p ", "4 ", "r ", "/ ", "h ", &
      "J ", "3 ", "% ", "1 ", "| ", &
      "7 ", "t ", "= ", "@ ", "x ", &
      "! ", "& ", "I ", "9 ", "  ", &
      "# ", "3 ", "L ", "3 ", "A ", &
      "3 ", "/ ", "c ", "R ", "0 ", &
      "y ", "9 ", "  ", "= ", "V ", &
      "j ", "6 ", "u ", "5 ", "0 ", &
      "7 ", ". ", "3 ", "1 ", "P ", &
      "4 ", "z ", "U ", "- ", "6 ", &
      "5 ", "K ", "T ", "v ", "8 ", &
      "9 ", "M ", "< ", "2 ", "N ", &
      "5 ", "5 ", "d ", "! ", "3 ", &
      "W ", "b ", "9 ", "6 ", "& ", &
      ", ", "C ", "X ", ", ", "B ", &
      "# ", "$ ", "H ", "8 ", "2 ", &
      "$ ", "7 ", "2 ", "8 ", "1 ", &
      "S ", "9 ", "* ", "o ", "6 ", &
      "6 ", "Z ", "  ", "7 ", "0 ", &
      "5 ", "1 ", "8 ", "2 ", "2 ", &
      "w ", "7 ", "% ", "G ", "F ", &
      "E ", "0 ", "k ", "O ", "1 ", &
      "4 ", "9 ", "* ", "0 ", "3 ", &
      "> ", "2 ", "5 ", "l ", "6 ", &
      "| ", "4 ", "1 ", "1 ", "0 ", &
      "Y ", "Q ", "4 ", "+ ", "> ", &
      "D ", "g ", "@ ", "< ", "f ", &
      "? ", "8 ", "4 ", "n ", "7 ", &
      "4 ", "6 ", "q ", ". ", "i ", &
      "- ", "9 ", "s ", "8 ", "m ", &
      "e ", "0 ", "? ", "7 ", "2 " &
    ], shape=[32, 5])
    allocate(character(len=2) :: groups(32, 5))
    groups = tmp_groups
  end subroutine initialize_groups

  function derive_key_from_password(password, salt) result(key)
    character(len=*), intent(in) :: password
    character(len=*), intent(in) :: salt
    character(len=64) :: key

    ! Placeholder for real key derivation
    key = repeat('0', 64)  ! For demonstration purposes
  end function derive_key_from_password

  function generate_password(existing_passwords) result(password)
    character(len=100) :: password
    character(len=100), allocatable :: existing_passwords(:)
    character(len=100) :: result_string
    integer :: total, add_or_subtract, runs, i
    integer :: selected_group, selected_number
    character(len=2) :: element
    real :: rand_val

    result_string = ""
    total = 0
    call random_number(rand_val)
    add_or_subtract = int(2*rand_val) - 1
    call random_number(rand_val)
    runs = 35 + int(rand_val * 21)

    do i = 1, runs
      call random_number(rand_val)
      selected_group = 1 + int(rand_val * 32)
      call random_number(rand_val)
      selected_number = 1 + int(rand_val * 5)

      element = groups(selected_group, selected_number)

      if (is_i(element)) then
        total = total + add_or_subtract * abs(iachar(element(1:1)) - iachar('0'))
      else
        if (total /= 0) then
          write(result_string, '(a, i0)') trim(result_string), abs(total)
          total = 0
        end if
        result_string = trim(result_string)//trim(adjustl(element))
        call random_number(rand_val)
        add_or_subtract = int(2*rand_val) - 1
      end if
    end do

    if (total /= 0) then
      write(result_string, '(a, i0)') trim(result_string), abs(total)
    end if

    password = result_string
  end function generate_password

  subroutine encrypt_message(message, encrypted_message, password_char_pairs)
    character(len=*), intent(in) :: message
    character(len=1000), intent(out) :: encrypted_message
    type(password_char_pair), allocatable, intent(out) :: password_char_pairs(:)
    character(len=100), allocatable :: existing_passwords(:)
    character(len=100), allocatable :: passwords(:)
    integer :: idx

    allocate(character(len=100) :: passwords(len_trim(message)))
    allocate(password_char_pair :: password_char_pairs(len_trim(message)))

    do idx = 1, len_trim(message)
      passwords(idx) = generate_password(existing_passwords)
      existing_passwords = append_to_array(existing_passwords, passwords(idx))
      password_char_pairs(idx)%password = passwords(idx)
      password_char_pairs(idx)%char = message(idx:idx)
    end do

    encrypted_message = ""
    do idx = 1, len_trim(message)
      encrypted_message = trim(encrypted_message) // trim(passwords(idx)) // " "
    end do
    encrypted_message = trim(encrypted_message)
  end subroutine encrypt_message

  function decrypt_message(encrypted_message, password_char_pairs) result(decrypted_message)
    character(len=*), intent(in) :: encrypted_message
    type(password_char_pair), intent(in) :: password_char_pairs(:)
    character(len=1000) :: decrypted_message
    character(len=100), allocatable :: encrypted_passwords(:)
    character(len=100) :: password
    integer :: idx, i

    encrypted_passwords = split_string(encrypted_message, ' ')
    if (size(encrypted_passwords) /= size(password_char_pairs)) then
      print *, "Error: Mismatch in encrypted data."
      decrypted_message = ""
      return
    end if

    decrypted_message = ""
    do idx = 1, size(encrypted_passwords)
      password = encrypted_passwords(idx)
      do i = 1, size(password_char_pairs)
        if (trim(password) == trim(password_char_pairs(i)%password)) then
          decrypted_message = decrypted_message // password_char_pairs(i)%char
          exit
        end if
      end do
    end do

  end function decrypt_message

  function is_i(str) result(is_int)
    character(len=*), intent(in) :: str
    integer :: io_stat
    logical :: is_int

    read(str, *, iostat=io_stat)
    is_int = (io_stat == 0)
  end function is_i

  function append_to_array(arr, val) result(new_arr)
    character(len=100), allocatable :: arr(:)
    character(len=100) :: val
    character(len=100), allocatable :: new_arr(:)
    integer :: n

    if (.not. allocated(arr)) then
      n = 0
    else
      n = size(arr)
    end if

    allocate(character(len=100) :: new_arr(n+1))
    if (n > 0) then
      new_arr(:n) = arr
    end if
    new_arr(n+1) = val

    append_to_array = new_arr
  end function append_to_array

  function split_string(str, delim) result(tokens)
    character(len=*), intent(in) :: str
    character(len=1), intent(in) :: delim
    character(len=100), allocatable :: tokens(:)
    character(len=100) :: token
    integer :: i, n, start, endp

    n = 0
    start = 1
    do i = 1, len_trim(str)
      if (str(i:i) == delim) then
        endp = i - 1
        if (endp >= start) then
          n = n + 1
          tokens = append_to_array(tokens, str(start:endp))
        end if
        start = i + 1
      end if
    end do
    if (start <= len_trim(str)) then
      n = n + 1
      tokens = append_to_array(tokens, str(start:len_trim(str)))
    end if

    split_string = tokens
  end function split_string

end module encryption_module