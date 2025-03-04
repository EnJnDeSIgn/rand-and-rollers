program main
  use encryption_module
  implicit none
  character(len=1) :: choice
  character(len=1000) :: message, encrypted_message, decrypted_message
  type(password_char_pair), allocatable :: password_char_pairs(:)
  character(len=100) :: password, salt, key
  integer :: i
  character(len=*), parameter :: filename = "password_mapping.enc"
  real :: salt_real(16)

  call initialize_groups()
  call random_seed()

  print *, "Do you want to (E)ncrypt or (D)ecrypt a message? "
  read(*, '(A)') choice

  if (choice == 'E' .or. choice == 'e') then
    print *, "Enter the message to encrypt: "
    read(*, '(A)') message

    call encrypt_message(message, encrypted_message, password_char_pairs)
    print *, "Encrypted Message:"
    print *, encrypted_message

    print *, "Enter a password to encrypt the mapping file: "
    read(*, '(A)') password

    call random_number(salt_real)
    salt = ''
    do i = 1, size(salt_real)
      write(salt(i:i), '(f0.10)') salt_real(i)
    end do

    key = derive_key_from_password(password, salt)

    open(unit=10, file=filename, status='replace', action='write')
    write(10, '(A)') trim(salt)
    write(10, *) size(password_char_pairs)
    do i = 1, size(password_char_pairs)
      write(10, '(A,1X,A)') trim(password_char_pairs(i)%password), trim(password_char_pairs(i)%char)
    end do
    close(10)

    print *, "Encrypted password mapping saved to 'password_mapping.enc'."
    print *, "You can now run the program again to decrypt the message."

  else if (choice == 'D' .or. choice == 'd') then
    print *, "Enter the encrypted message: "
    read(*, '(A)') encrypted_message

    print *, "Enter the password to decrypt the mapping file: "
    read(*, '(A)') password

    open(unit=10, file=filename, status='old', action='read')
    read(10, '(A)') salt
    read(10, *) i
    allocate(password_char_pairs(i))
    do i = 1, size(password_char_pairs)
      read(10, '(A,1X,A)') password_char_pairs(i)%password, password_char_pairs(i)%char
    end do
    close(10)

    key = derive_key_from_password(password, salt)

    decrypted_message = decrypt_message(encrypted_message, password_char_pairs)
    print *, "Decrypted Message:"
    print *, decrypted_message

    if (trim(decrypted_message) /= "") then
      print *, "Decryption completed."
    else
      print *, "Decryption failed due to mismatched data."
    end if

  else
    print *, "Invalid choice. Please select 'E' to encrypt or 'D' to decrypt."
  end if

end program main