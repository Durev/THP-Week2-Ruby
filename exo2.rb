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

		#Si c'est une lettre minuscule ou majuscule, on convertit juste le résultat à nouveau en caractère :
		elsif ((c >= 97) && (c <= 122)) || ((c >= 65) && (c <= 90))
			code << (c + n).chr
		
		#Si ce n'est pas une lettre (espace, ponctuation, etc.), on laisse le caractère intact :
		else 
			code << c.chr
		end

	end

	#On affiche le résultat
	puts "\nAvé césar ! \nVotre message codé est : #{code} \nBye. La bise à Cléopâtre."
end

#Instructions pour saisie par l'utilisateur
puts "Bonjour, noble César. Saisissez la chaîne de caractères à coder."
saisie = gets.chomp
puts "Saisissez la clé à utiliser."
clef = gets.chomp.to_i

chiffre_de_cesar(saisie, clef)
