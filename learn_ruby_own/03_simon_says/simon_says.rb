def echo(what)
	what
end

def shout(what)
	what.upcase
end

def repeat(what, *times)
	if times.length==0
		what + " " + what
	else
		n=times[0].to_i
		(what + " ")*(n-1) + what
	end
end

def start_of_word(what,number)
	what.split(//).first(number).join

end

def first_word(what)
	what.split(" ")[0]
end

def titleize(what)
	small_words=["the","over","and"]
	r1=what.split.map {|i| (!small_words.include? i) ? (i.capitalize):(i)}.join(" ")	
	if what.split.size==1
		r1.split[0].capitalize
	else
		r1.split[0].capitalize + " " + r1.split[1..r1.split.size].join(" ")
	end
end