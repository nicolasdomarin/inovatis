def dec(chaine)
	chaine2 String
	chaine.each do |c|
		if(c == " ")
			chaine2 += " "
		else
			c = c.to_ascii + 1
			chaine2 += c.to_string 
		end
	end
	return chaine2
end

def tri(tab)
	do 
		count = 0
			tab.each do i  
				if(i<i+1)
					a = i
					i = i+1
					i+1 = a
					count += 1
	while count != 0
				end
			end
		end
	end
end