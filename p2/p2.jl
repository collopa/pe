using LinearAlgebra

function fib(n)
	if n == 1
		return 1
	elseif n == 2
		return 2
	else
		return fib(n-1) + fib(n-2)
	end	
end


function fastFib(n)
	if n==1
		return 1
	end
	old, new = 1,1 
	for i = 1:n-1
		old, new = new, old + new
	end	
	return new
end


function p2ans()
	n = 1
	fibL = []
	while fib(n) < 4*10^6
		push!(fibL, fib(n))
		n+=1	
	end	
	evList = 1 .- fibL.%2
	return dot(vec(evList), vec(fibL))
end


function fastans()
	n = 1
	fibL = []
	while fastFib(n) < 4*10^6
		push!(fibL, fastFib(n))
		n+=1
	end
	evList = 1 .- fibL.%2
	return dot(vec(evList), vec(fibL))
end
