
#Exo 1 : Multiples de 3 et 5

multiples = []

for i in 1...1000	
	if (i % 3 === 0) || (i % 5 === 0)
		multiples.push(i)
	end
end

puts multiples.inject(:+)

#In your face Villani