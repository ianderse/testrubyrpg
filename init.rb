require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super 640, 480, false
		self.caption = "Gosu Tutorial"

		self.load_tiles
	end

	def update
	end

	def draw
	end
end

def load_tiles
	@tiles = Gosu::Image::load_tiles(self, "test_20x12.png", 12, 20, true)
end

window = GameWindow.new
window.show