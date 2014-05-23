require './fight'
require './inventory'


def main_menu
	puts $pc.name + " the level " + $pc.level.to_s + " " + $pc.race.to_s + " " + $pc.job.to_s
	puts "(1)Character Sheet, (2)Inventory, (3)Fight"
	choice = gets.chomp.to_i

	if choice == 1
		$pc.get_stats
	elsif choice == 2
		inventory
	elsif choice == 3
		fight
	else
		puts "Not a valid choice"
		main_menu
	end

end