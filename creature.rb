class Creature
	attr_accessor :name, :race, :job, :hp, :mp, :int, :str, :dex, :level, :exp
	attr_accessor :attack, :defense, :magdam, :dexdam, :gold

	def die!
		@hp = 0
	end

	def dead?
		if @hp <= 0
			true
		elsif @hp > 0
			false
		end	
	end

	def deal_damage_to(target)

		rand_num = 1 + rand(6)
		if rand_num.between?(1,5)
			target.hp = target.hp - (attack - target.defense)
		else
			puts self.name + " misses!"
		end

		if target.hp < 0
			target.hp = 0
		end

		puts target.name + " has " + target.hp.to_s + " HP remaining"
		target.dead?
	end

end