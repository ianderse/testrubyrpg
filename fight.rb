require './monster'

def end_of_fight
	#level up check, exp gain, loot gain, return to menu
	main_menu
end

def fight
	dice = 1 + rand(6)

	if dice == 1
		@mob = Monster.new("Goblin", 25, 8, 5, 1)
	elsif dice == 2
		@mob = Monster.new("Orc", 50, 10, 5, 1)
	elsif dice == 3
		@mob = Monster.new("Dark Elf", 75, 12, 7, 2)
	elsif dice == 4
		@mob = Monster.new("Ogre", 100, 18, 7, 3)
	elsif dice == 5
		@mob = Monster.new("Dragon", 150, 22, 10, 5)
	elsif dice == 6
		@mob = Monster.new("Wizard", 100, 27, 5, 5)
	end

	puts $pc.name + " is fighting a level " + @mob.level.to_s + " " + @mob.name + "!"
	while !(@mob.dead? || $pc.dead?) do
		puts "(1)Attack"
		#check pc class, probably a way to not have to check this here.
		if $pc.job == "Mage"
			puts "(2)Cast Spell"
		elsif $pc.job == "Thief"
			puts "(2)Backstab"
		else
			puts "(2)Shield Bash"
		end
		puts "(3)Run"

		choice = gets.chomp.to_i

		if choice == 1
			#put all of this in a check_damage method in creature class
			@mob.hp = @mob.hp - ($pc.attack - @mob.defense)
			$pc.hp = $pc.hp - (@mob.attack - $pc.defense)
			puts @mob.name + " has " + @mob.hp.to_s + " HP remaining"
			puts $pc.name + " has " + $pc.hp.to_s + " HP remaining"
		elsif choice == 2
			#same as above, shouldn't have to check this here.
			if $pc.job == "Mage"
				@mob.hp = @mob.hp - ($pc.magdam - @mob.defense)
				$pc.hp = $pc.hp - (@mob.attack - $pc.defense)
				puts @mob.name + " has " + @mob.hp.to_s + " HP remaining"
				puts $pc.name + " has " + $pc.hp.to_s + " HP remaining"
			elsif $pc.job == "Thief"
				@mob.hp = @mob.hp - ($pc.dexdam - @mob.defense)
				$pc.hp = $pc.hp - (@mob.attack - $pc.defense)
				puts @mob.name + " has " + @mob.hp.to_s + " HP remaining"
				puts $pc.name + " has " + $pc.hp.to_s + " HP remaining"
			else
			end
		else
			run = 1 + rand(2)
			if run == 1
				puts "Ran away!"
				main_menu
			else 
				puts "Run failed! " + @mob.name + " gets a free attack!"
				$pc.hp = $pc.hp - (@mob.attack - $pc.defense)
				puts @mob.name + " has " + @mob.hp.to_s + " HP remaining"
				puts $pc.name + " has " + $pc.hp.to_s + " HP remaining"				
			end
		end
	end

	end_of_fight

end
