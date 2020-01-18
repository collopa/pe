function answer()
	maxpal = 0
	for i = 999:-1:100
		for j = 999:-1:100
			s = string(i*j)
			if s == s[end:-1:1]  && i*j > maxpal
				maxpal = i*j
			end	
		end	
	end	
	return maxpal
end	
