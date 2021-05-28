class House

	def line(verse)
		"#{intro()}#{verse.downto(1).collect { |i| phrase(i) }.join("")}the house that Jack built.\n"
	end

	def recite()
		1.upto(12).collect { |i| line(i) }.join("\n")
	end

	def intro
		"This is "
	end

	def phrase(number)
		return ""if number < 2
		pieces = [	
		"the malt that lay in ",
		"the rat that ate ",
		"the cat that killed ",
		"the dog that worried ",
		"the cow with the crumpled horn that tossed ",
		"the maiden all forlorn that milked ",
		"the man all tattered and torn that kissed ",
		"the priest all shaven and shorn that married ",
		"the rooster that crowed in the morn that woke ",
		"the farmer sowing his corn that kept ",
		"the horse and the hound and the horn that belonged to "
		]
		pieces[number -2]
	end

end

class PirateHouse < House
	def intro
		"Thar be "
	end
end

class RandomHouse < House
	def initialize
		@pieces = [	
			"the malt that lay in ",
			"the rat that ate ",
			"the cat that killed ",
			"the dog that worried ",
			"the cow with the crumpled horn that tossed ",
			"the maiden all forlorn that milked ",
			"the man all tattered and torn that kissed ",
			"the priest all shaven and shorn that married ",
			"the rooster that crowed in the morn that woke ",
			"the farmer sowing his corn that kept ",
			"the horse and the hound and the horn that belonged to "
			].shuffle
	end
	def phrase(number)
		return ""if number < 2
		@pieces[number -2]
	end



end
