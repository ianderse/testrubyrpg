class Creature
	attr_accessor :name, :race, :job, :hp, :mp, :int, :str, :dex, :level, :exp

	def die!
		@dead = true
		puts "#{name} dies!"
	end

	def dead?
		if @hp <= 0
			@dead = true
		elsif @hp > 0
			@dead = false
		end	
	end

	def level_up_check
		if @exp >= @exp_needed
			@level = @level + 1
		end
	end

end