def inventory
	puts "(1)Healing Potion, (2)Magic Potion (3)Exit"
	choice = gets.chomp.to_i

	if choice == 1
	elsif choice == 2
	else
		main_menu
	end
end