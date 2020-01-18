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



function nthprime(nprime)
	pnum = 2
	p = 3
	while pnum < nprime
		p+=2
		if is_prime(p)
			pnum += 1	
		end
	end	
	return p
end



function answer()
	return nthprime(10001)
end	
