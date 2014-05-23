def inventory
	puts "(1)Healing Potion, (2)Mana Potion (3)Exit"
	choice = gets.chomp.to_i

	if choice == 1
		if $pc.h_potion > 0
			puts "Drank a healing potion"
			$pc.h_potion = $pc.h_potion - 1
			$pc.hp = $pc.maxhp
			puts $pc.h_potion.to_s + " healing potions left"
			inventory
		else
			puts "No healing potion!"
			inventory
		end
	elsif choice == 2
		if $pc.m_potion > 0
			puts "Drank a mana potion"
			$pc.m_potion = $pc.m_potion - 1
			$pc.mp = $pc.maxmp
			puts $pc.h_potion.to_s + " mana potions left"
			inventory
		else
			puts "No mana potion!"
			inventory
		end
	else
		main_menu
	end
end