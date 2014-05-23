class Monster < Creature
	def initialize(name, hp, attack, defense, level, exp, gold)
		@name = name
		@level = level
		@hp = hp
		@attack = attack
		@defense = defense
		@exp = exp
		@gold = gold
	end
end