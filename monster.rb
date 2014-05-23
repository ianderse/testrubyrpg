class Monster < Creature
	def initialize(name, hp, attack, defense, level, exp)
		@name = name
		@level = level
		@hp = hp
		@attack = attack
		@defense = defense
		@exp = exp
	end
end