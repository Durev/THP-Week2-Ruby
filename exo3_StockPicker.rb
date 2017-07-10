prix = [17,3,6,9,15,8,6,1,10]

def trader_du_dimanche(tableau)
	#On utilise un compteur pour ensuite démarrer du bon élément
	nb = 0

	#variables locales dans laquelle on va stocker le bénéfice possible pour chaque combinaison d'achat-revente et les détails
	benef = 0
	infos = []

	#Pour chaque élément du tableau :	
	tableau.each do |p|

		#On calcule toutes les bénéfices possibles avec achat ce jour et revente un des jours suivants.
		#Le compteur nb permet de ne pas prendre en compte les jours précédents
		for i in nb...tableau.size
			#On calcule le bénéfice achat-revente pour cette combinaison :
			#Si le bénéfice est plus haut que le maximum trouvé précédemment on le remplace,
			# et on enregistre les détails (dans l'ordre : jour d'achat, valeur d'achat, jour de vente, valeur de vente) 
			if (tableau[i] - p) > benef
				benef = (tableau [i] - p)
				infos = [nb, p, i, tableau[i]]
			end
		end

		#Incrémentation
		nb += 1	
	end

	puts "On peut faire un bénéfice de #{benef}$"
	puts "En achetant à un valeur de #{infos[1]}$ le jour #{infos[0]} \net en revendant à une valeur de #{infos[3]}$ le jour #{infos[2]}."
end

trader_du_dimanche(prix)