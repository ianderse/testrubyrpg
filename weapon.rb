require './get_random'

class Weapon
	attr_accessor :attack, :speed, :enchant, :name

	def initialize(attack, speed, enchant, type)
		@attack = attack
		@speed = speed
		@enchant = enchant
		@name = Get_random.name(type)
	end
end