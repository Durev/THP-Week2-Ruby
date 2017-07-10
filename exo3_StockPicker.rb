prix = [17,3,6,9,15,8,6,1,10]

def trader_du_dimanche(tableau)
	#On utilise un compteur pour ensuite démarrer du bon élément
	nb = 0

	#Pour chaque élément du tableau :	
	tableau.each do |p|
		puts "\npassage n° #{nb} sur l'élément #{p} \n"

		#On calcule toutes les bénéfices possibles avec achat ce jour et revente un des jours suivants.
		#Le compteur nb permet de ne pas prendre en compte les jours précédents
		for i in nb...tableau.size
			tab = []
			tab.push(tableau[i] - p) #valeur
			tab.push(nb) #jour d'achat
			tab.push(i) #jour de vente
			print tab
		end

		#Incrémentation
		nb += 1	
	end
end

trader_du_dimanche(prix)