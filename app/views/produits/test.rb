def chaine_decale(chaine)
	chaine2 = new String
	chaine.each do |c|
		if c == " "
			chaine2 += " "
		else
			n = c.to_ascii + 1
			chaine2 += n.to_s
		end
	end
	return chaine2
end