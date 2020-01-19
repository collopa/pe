function is_prime(n)
	if n%2==0 
		return false
	end
	for i = 3:2:floor(sqrt(n))+1
		if n%i==0
			return false
		end	
	end
	return true
end


function answer()
	ptot = 2
	for i = 3:2:2000000
		if is_prime(i)
			ptot += i
		end	
	end
	return ptot
end	
