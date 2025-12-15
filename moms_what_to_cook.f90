! Display the program name and introduction
!print *, "               moms what to cook               "
!print *, "        A Oracle Of Divine moms cooking        "
!print *, "                By Ian J Norris                "
!print *, "              Ian.enjn@gmail.com               "
program moms_what_to_cook
    implicit none
	character(len=1) :: user_input
    integer :: selected_group, selected_card
    character(len=30), dimension(0:2, 0:5) :: groups
    character(len=30), dimension(6) :: group0, group1, group2
    real :: rand

    ! Seed the random number generator
    call random_seed()

	! Display the program name and introduction
	print *
	print *, "               moms what to cook               "
	print *, "        A Oracle Of Divine moms cooking        "
	print *, "                By Ian J Norris                "
	print *, "              Ian.enjn@gmail.com               "
	print *
    ! Initialize tarot groups (group0 to group12)
    ! Initialize group0
    group0 = (/ "Steak and baked potato        ", "Roast beef                    ", "Meatloaf                      ", &
                "Shepherds pie                 ", "Roast pork                    ", "Pork chops                    " /)
    ! Initialize group1
    group1 = (/ "Cottage roll                  ", "Ham                           ", "Roast chicken                 ", &
                "Chicken pot pie               ", "Stir fry, vegetable,beef,chick", "Lasagna                       " /)
    ! Initialize group2
    group2 = (/ "Spaghette                     ", "Pizza                         ", "Meatballs                     ", &
                "Corred beef                   ", "Hamburgers or Hotdogs         ", "Chilly                        " /)

	! ... (Initialize all groups similarly)
do while (.true.)
    ! Randomly select a group
    call random_number(rand)
    selected_group = int(rand * 3)
    if (selected_group < 0 .or. selected_group > 2) then
        print *, "Error: selected_group out of range"
        stop
    end if

    ! Randomly select a card from the chosen group
    call random_number(rand)
    selected_card = int(rand * 6)
    if (selected_card < 0 .or. selected_card > 5) then
        print *, "Error: selected_card out of range"
        stop
    end if

    ! Assign groups to the groups array
    groups(0, :) = group0
    groups(1, :) = group1
    groups(2, :) = group2
	! ... (assign all other groups similarly)
	
    ! Display the selected card
print *
print *, "From Group ", selected_group, ": ", &
    trim(groups(selected_group, selected_card))
		print *
        print *, "Draw another meal? (Y/N)"
        read(*,*) user_input
        if (user_input == 'N' .or. user_input == 'n') exit
    end do
    print *, "Thank you for using the moms what to cook Generator."
end program moms_what_to_cook