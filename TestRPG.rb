require './player'
require './menu'

def start
	puts "What is your name? "
	name = gets.chomp

	puts "Choose your race: (1) Human, (2) Elf, (3) Halfling"
	race = gets.chomp.to_i

	puts "Choose your class: (1) Warrior, (2) Mage, (3) Thief"
	job = gets.chomp.to_i

	$pc = Player.new(name, race, job)
	
	main_menu
end

start