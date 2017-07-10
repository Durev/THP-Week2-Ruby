#Old school crypto

def chiffre_de_cesar(chaine, n)
	#variable dans laquelle on va stocker le résultat, lettre par lettre :
	code = ""	
	
	chaine.each_byte do |c|
		code << (c + n).chr
	end
	puts "Avé césar ! \nVotre message codé est : #{code}"
end

chiffre_de_cesar("foo bar", 0)
chiffre_de_cesar("foo bar", 5)