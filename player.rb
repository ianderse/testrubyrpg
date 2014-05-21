require './creature'

class Player < Creature
	def initialize(name, race, job)
		@name = name
		@race = race
		@job = job
		@mp = 50
		@int = 20
		@str = 20
		@dex = 20
		@hp = 50
		welcome

	end

	def welcome
		puts "Welcome " + @name + " the " + select_race + " " + select_job
	end

	def get_stats
		@hp = @str * 5
		@mp = @int * 5
		puts "HP: " + @hp.to_s
		puts "MP: " + @mp.to_s
		puts "Intelligence: " + @int.to_s
		puts "Strength: " + @str.to_s
		puts "Dexterity: " + @dex.to_s
	end

	private 

	def select_race
		if @race == 1
			"Human"
		elsif @race == 2
			@int = @int + 5
			@str = @str - 5
			"Elf"
		elsif @race == 3
			@dex = @dex + 5
			@str = @str - 3
			@int = @int - 2
			"Halfling"
		end
	end

	def select_job
		if @job == 1
			@str = @str + 5
			@int = @int - 5
			"Warrior"
		elsif @job == 2
			@int = @int + 5
			@str = @str - 5
			"Mage"
		elsif @job == 3
			@str = @str - 3
			@int = @int - 2
			@dex = @dex + 5
			"Thief"
		end
	end
end