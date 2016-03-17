
def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(array)
	array.inject(0) {|count,element| count+=element}
end

def multiply(*args)
	args.inject(1) {|count,element| count*=element}
end

def power(base,power)
	base**power
end

def factorial(number)
	if number==0
		1
	else
		a=*(1..number)
		a.inject(1) {|count,element| count*=element}
	end
end