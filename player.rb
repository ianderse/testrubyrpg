require './creature'

class Player < Creature
	def initialize(name, race, job)
		@name = name
		@race = race
		@job = job
		@int = 20
		@str = 20
		@dex = 20
		@level = 1

		select_race
		select_job

		@attack = str * 1.25
		@defense = str * 0.25
		@magdam = int * 1.5
		@dexdam = dex * 1.5
		@hp = @str * 5
		@mp = @int * 5
		@exp = 0
		@exp_needed = 50
		@gold = 100

		welcome

	end

	def welcome
		puts "Welcome " + @name + " the " + @race.to_s + " " + @job.to_s
	end

	def get_stats
		puts "HP: " + @hp.to_s
		puts "MP: " + @mp.to_s
		puts "Intelligence: " + @int.to_s
		puts "Strength: " + @str.to_s
		puts "Dexterity: " + @dex.to_s
		puts "EXP: " + @exp.to_s
		puts "Gold: " + @gold.to_s
		main_menu
	end

	def level_up_check
		if @exp >= @exp_needed
			@level = @level + 1
			@exp = 0
			@exp_needed = (50 * level)
		end
	end

	private 

	def select_race
		if @race == 1
			@race = "Human"
		elsif @race == 2
			@int = @int + 5
			@str = @str - 5
			@race = "Elf"
		elsif @race == 3
			@dex = @dex + 5
			@str = @str - 3
			@int = @int - 2
			@race = "Halfling"
		else
			puts "Not a valid race"
			start
		end
	end

	def select_job
		if @job == 1
			@str = @str + 5
			@int = @int - 5
			@job = "Warrior"
		elsif @job == 2
			@int = @int + 5
			@str = @str - 5
			@job = "Mage"
		elsif @job == 3
			@str = @str - 3
			@int = @int - 2
			@dex = @dex + 5
			@job = "Thief"
		else
			puts "Not a valid job"
			start
		end
	end
end