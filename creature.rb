class Creature
	attr_accessor :name, :race, :job, :hp, :mp, :int, :str, :dex, :level, :exp, :attack, :defense

	def die!
		@dead = true
		@hp = 0
		puts "#{name} dies!"
	end

	def dead?
		if @hp <= 0
			@dead = true
		elsif @hp > 0
			@dead = false
		end	
	end

end