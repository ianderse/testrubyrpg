module Get_random
	def self.name(type)
		@type = type
		get_name("start_adjectives").capitalize + ' ' + @type + " of " + get_name("end_adjectives")
	end

	def self.get_name(filename)
		File.read(File.expand_path("../data/#{filename}.txt", __FILE__)).split("\n").sample
	end
end