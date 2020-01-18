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

function big_pfactor(N)
	if N%2==0
		bf = 2
	else	
		bf = 1
	end

	for n = 3:2:floor(sqrt(N))+1
		if N%n==0 && is_prime(n)
			bf = n
		end	
	end
	return bf
end

function answer()
	big_pfactor(600851475143)
end	
