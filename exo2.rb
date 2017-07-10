#Old school crypto

def chiffre_de_cesar(chaine, n)
	#variable dans laquelle on va stocker le résultat, lettre par lettre :
	code = ""
	#Pour que ça marche quelque soit la clé rentrée
	n = n % 26

	#Pour chaque caractère, on convertit
	chaine.each_byte do |c|
		#Si le caractère est une minuscule et le résultat est plus grand que z
		# OU le caractère est une majuscule et le résultat est plus grand que Z
		if ((c >= 97) && (c <= 122) && (c + n > 122)) || ((c >= 65) && (c <= 90) && (c + n > 90))
			code << (c + n - 26).chr

		#sinon, on convertit juste le résultat à nouveau en caractère :
		else 
			code << (c + n).chr
		end

	end

	#On affiche le résultat
	puts "Avé césar ! \nVotre message codé est : #{code}"
end

#Tests :

chiffre_de_cesar("xyz", 3)
chiffre_de_cesar("XYZ", 3)
chiffre_de_cesar("ABC", 3)
chiffre_de_cesar("abc", 3)
chiffre_de_cesar("ABC", 123)
chiffre_de_cesar("abc", 546)