function answer()
	for i = 1:1000
		x = i
		y = (1000*(x-500))/(x-1000)
		z = (500000-1000*x+x^2)/(1000-x)
		if y == floor(y) && z == floor(z) && x*y*z > 0
			return convert(BigInt, x*y*z)
		end	
	end	
end	
