class Weapon
	attr_accessor :attack, :speed, :enchant

	def initialize(attack, speed, enchant)
		@attack = attack
		@speed = speed
		@enchant = enchant
	end
end