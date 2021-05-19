class House

	def line(verse)
		case verse
		when 1
			return "This is the house that Jack built.\n"
		when 2
			return "This is the malt that lay in the house that Jack built.\n"
		when 3
			return "This is #{phrase(verse)}#{phrase(verse-1)}#{phrase(verse-2)}#{phrase(verse-3)}#{phrase(verse-4)}#{phrase(verse-5)}#{phrase(verse-6)}#{phrase(verse-7)}#{phrase(verse-8)}the rat that ate the malt that lay in the house that Jack built.\n"
		else
			return "This is #{phrase(verse)}#{phrase(verse-1)}#{phrase(verse-2)}#{phrase(verse-3)}#{phrase(verse-4)}#{phrase(verse-5)}#{phrase(verse-6)}#{phrase(verse-7)}#{phrase(verse-8)}the rat that ate the malt that lay in the house that Jack built.\n"
		end
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
		else
			""
		end
	end

end
