

def translate (word)
	result=[]
	phrase=word.split(" ") # Divide sentence in array
	phrase.map do |j|   #Iterate over the splitted sentence (words in array)
		if ["a","e","i","o","u"].include? j[0] #If the first letter of the word is a vowel
			j.insert(-1,"ay") # Insert "ay" at the end of the word and finish
		else # If the first letter of the word is not a vowel
			count=0 
			j.each_char do |i| # Iterate over each letter in the word
				count=count+1
				j.insert(-1,i) # Insert the letter at the end of the word
				if ["a","e","i","o","u"].include? j[count] # If the next letter is a vowel
					if j[i]!="q"	# If the current letter is not a q
						j=j[count..j.size] # Eliminate the current letter in the beggining
						j.insert(-1,"ay") # Insert "ay" at the end of the word and finish
						break
					end
				end
			end
		end
		result.insert(-1,j)
	end
	result
	result.join(" ")
end
