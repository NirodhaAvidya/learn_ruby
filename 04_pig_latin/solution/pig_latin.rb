def translate(word)
	words = word.split(" ")
	pig = []
	for word in words do
		
		if word[/\A[aeiou]*/i] != ""
			pig << word + "ay"
		
		elsif word[/\Aqu/i] == "qu"
			word.slice!("qu")
			pig << word + "quay"
		
		elsif word[/\A.qu/i].nil? == false
			consonants = word[/\A.qu/i]
			word.slice!(consonants)
			pig << word + consonants + "ay"			
		
		else
			#determine leading consonants
			consonants = word[/\A[^aeiou]*/i]
			#remove consonants from beginning of word
			word.slice!(consonants)
			#move consonants to end of word
			pig << word + consonants +"ay"
			#add "ay" to end of word
		end
	end
	
	pig.join(" ")
end
