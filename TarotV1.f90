! Display the program name and introduction
!print *, "      tarot_card_generator_EnJnDeSIgn2024      "
!print *, "         A Oracle Of Divine Randomness         "
!print *, "                By Ian J Norris                "
!print *, "              Ian.enjn@gmail.com               "
program tarot_card_generator_EnJnDeSIgn2024
    implicit none
    integer :: selected_group, selected_card
    character(len=30), dimension(0:12, 0:5) :: groups
    character(len=30), dimension(6) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, &
                                        group9, group10, group11, group12
    real :: rand

    ! Seed the random number generator
    call random_seed()

    ! Initialize tarot groups (group0 to group12)
    ! Initialize group0
    group0 = (/ "The Magician                  ", "Two of Swords                 ", "Three of Pentacles            ", &
                "Queen of Swords               ", "Three of Wands                ", "Nine of Pentacles             " /)
    ! Initialize group1
    group1 = (/ "Death                         ", "The World                     ", "The Emperor                   ", &
                "Knight of Pentacles           ", "Six of Pentacles              ", "Knave of Swords               " /)
    ! Initialize group2
    group2 = (/ "Four of Wands                 ", "Knave of Chalices             ", "Ace of swords                 ", &
                "The Wheel of Fortune          ", "King of Swords                ", "Seven of Swords               " /)
    ! Initialize group3
    group3 = (/ "Knave of Wands                ", "Knight of Chalices            ", "Seven of Chalices             ", &
                "Knight of Swords              ", "The Fool                      ", "The Devil                     " /)
    ! Initialize group4
    group4 = (/ "Four of Swords                ", "Knave of Pentacles            ", "The Star                      ", &
                "Six of Wands                  ", "Six of Chalices               ", "Four of Pentacles             " /)
    ! Initialize group5
    group5 = (/ "Eight of Swords               ", "Temperance                    ", "Eight of Pentacles            ", &
                "Five of Chalices              ", "Two of Wands                  ", "Ten of Wands                  " /)
    ! Initialize group6
    group6 = (/ "Seven of Wands                ", "Eight of Chalices             ", "Queen of Chalices             ", &
                "Five of Wands                 ", "The Chariot                   ", "Three of Swords               " /)
    ! Initialize group7
    group7 = (/ "The Tower                     ", "Five of Swords                ", "Nine of Chalices              ", &
                "The Hanged Man                ", "The Moon                      ", "Three of Chalices             " /)
    ! Initialize group8
    group8 = (/ "Judgement                     ", "Ace of Chalices               ", "Ace of Pentacles              ", &
                "The High Priestess            ", "Ten of Pentacles              ", "The Lovers                    " /)
    ! Initialize group9
    group9 = (/ "Six of Swords                 ", "The Hierophant                ", "Strength                      ", &
                "Justice                       ", "Eight of Wands                ", "Ten of Chalices               " /)
    ! Initialize group10
   group10 = (/ "Seven of Pentacles            ", "Ten of Swords                 ", "King of Wands                 ", &
                "The Sun                       ", "King of Chalices              ", "Ace of Wands                  " /)
    ! Initialize group11
   group11 = (/ "Four of Chalices              ", "Five of Pentacles             ", "King of Pentacles             ", &
                "The Hermit                    ", "The Empress                   ", "Nine of Wands                 " /)
    ! Initialize group12
   group12 = (/ "Knight of Wands               ", "Two of Chalices               ", "Two of Pentacles              ", &
                "Queen of Pentacles            ", "Queen of Wands                ", "Nine of Swords                "/)
	! ... (Initialize all groups similarly)

    ! Randomly select a group
    call random_number(rand)
    selected_group = int(rand * 13)
    if (selected_group < 0 .or. selected_group > 12) then
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
    groups(3, :) = group3
    groups(4, :) = group4
    groups(5, :) = group5
    groups(6, :) = group6
    groups(7, :) = group7
    groups(8, :) = group8
    groups(9, :) = group9
    groups(10, :) = group10
    groups(11, :) = group11
    groups(12, :) = group12
	! ... (assign all other groups similarly)
	
    ! Display the selected card
    print *, trim(groups(selected_group, selected_card))
    !print *, "Thank you for using the Tarot Card Generator."
end program tarot_card_generator_EnJnDeSIgn2024