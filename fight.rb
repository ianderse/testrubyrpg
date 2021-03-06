require './monster'
require './weapon'
require './armor'

def end_of_fight
	#todo: loot gain
	if $pc.dead?
		puts $pc.name + " is dead!!"
		puts "Game Over"
		start
	elsif @mob.dead?
		puts @mob.name + " is dead!!"
		$pc.exp = $pc.exp + @mob.exp
		$pc.level_up_check
		$pc.gold = $pc.gold + @mob.gold
		#randomize this to be item, armor, or weapon and ranodm chance to gain anything
		weap = Weapon.new(5, 5, 1, "Sword")
		$pc.eq << weap
		main_menu
	end
end

def fight
	dice = 1 + rand(6)

	if dice == 1
		@mob = Monster.new("Goblin", 25, 8, 5, 1, 5, 5)
	elsif dice == 2
		@mob = Monster.new("Orc", 50, 10, 5, 1, 10, 20)
	elsif dice == 3
		@mob = Monster.new("Dark Elf", 75, 12, 7, 2, 15, 30)
	elsif dice == 4
		@mob = Monster.new("Ogre", 100, 18, 7, 3, 20, 40)
	elsif dice == 5
		@mob = Monster.new("Dragon", 150, 22, 10, 5, 40, 50)
	elsif dice == 6
		@mob = Monster.new("Wizard", 100, 27, 5, 5, 40, 75)
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
			@mob.deal_damage_to($pc)
			$pc.deal_damage_to(@mob)
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
				#shield bash
			end
		else
			run = 1 + rand(6)
			if run.between?(1,4)
				puts "Ran away!"
				main_menu
			else 
				puts "Run failed! " + @mob.name + " gets a free attack!"
				@mob.deal_damage_to($pc)
				puts @mob.name + " has " + @mob.hp.to_s + " HP remaining"
				puts $pc.name + " has " + $pc.hp.to_s + " HP remaining"				
			end
		end
	end

	end_of_fight

end
