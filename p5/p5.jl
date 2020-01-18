using LinearAlgebra

function answer()
	v = collect(1:100)
	return sum(v)^2 - v'* v 
end	
