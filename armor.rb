require './get_random'

class Armor
	attr_accessor :defence, :encumbrance, :enchant, :name

	def initialize(defence, encumbrance, enchant)
		@defence = defence
		@encumbrance = encumbrance
		@enchant = enchant
		@name = Get_random.name("Armor")
	end

end

arm = Armor.new(5, 5, 1)
puts arm.name