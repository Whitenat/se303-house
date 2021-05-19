class House

	def line(verse)
		"This is #{verse.downto(1).collect { |i| phrase(i) }.join("")}the house that Jack built.\n"
	end

	def recite()
		1.upto(12).collect { |i| line(i) }.join("\n")
	end

	def phrase(number)
		case number
		when 12
			"the horse and the hound and the horn that belonged to "
		when 11
			"the farmer sowing his corn that kept "
		when 10
			"the rooster that crowed in the morn that woke "
		when 9
			"the priest all shaven and shorn that married "
		when 8
			"the man all tattered and torn that kissed "
		when 7
			"the maiden all forlorn that milked "
		when 6
			"the cow with the crumpled horn that tossed "
		when 5
			"the dog that worried "
		when 4
			"the cat that killed "
		when 3
			"the rat that ate "
		when 2
			"the malt that lay in "
		else
			""
		end
	end

end
