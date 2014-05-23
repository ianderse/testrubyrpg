class Creature
	attr_accessor :name, :race, :job, :hp, :mp, :int, :str, :dex, :level, :exp, :attack, :defense, :magdam, :dexdam

	def die!
		puts "#{name} dies!"
		@hp = 0
		@dead = true
	end

	def dead?
		if @hp <= 0
			puts "#{name} dies!"
			@dead = true
		elsif @hp > 0
			@dead = false
		end	
	end

	def deal_damage_to(target)
			target.hp = target.hp - (attack - target.defense)
	end

end