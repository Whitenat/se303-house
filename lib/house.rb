class House
	def noun 
		[	
			"the malt ",
			"the rat ",
			"the cat ",
			"the dog ",
			"the cow with the crumpled horn ",
			"the maiden all forlorn ",
			"the man all tattered and torn ",
			"the priest all shaven and shorn ",
			"the rooster that crowed in the morn ",
			"the farmer sowing his corn ",
			"the horse and the hound and the horn "
			]
	end
	def verb
		[	
			"that lay in ",
			"that ate ",
			"that killed ",
			"that worried ",
			"that tossed ",
			"that milked ",
			"that kissed ",
			"that married ",
			"that woke ",
			"that kept ",
			"that belonged to "
			]
	end
	def pieces
		(0..10).map { |i| "#{noun[i]}#{verb[i]}"}
	end

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
		pieces[number -2]
	end

end

class PirateHouse < House
	def intro
		"Thar be "
	end
end

class RandomHouse < House
	def pieces
		super.shuffle
	end
end

class RandomPirateHouse < House
	def pieces
		super.shuffle
	end

	def intro
		"Thar be "
	end
end

class MixUpHouse < House
	def verb
		super.shuffle
	end
	def noun
		super.shuffle
	end
	def pieces
		super.shuffle
	end
end
