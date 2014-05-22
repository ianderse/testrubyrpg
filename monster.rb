class Monster < Creature
	def initialize(name, hp, attack, defense, level)
		@name = name
		@level = level
		@hp = hp
		@attack = attack
		@defense = defense
	end
end