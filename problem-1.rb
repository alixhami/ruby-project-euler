=begin
This is my solution to Project Euler Problem 1.
Instructions:
If we list all the natural numbers below 10 that are multiples of 
3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
=end

# Start with zero
total = 0

for i in 1...1000 	# for numbers under a thousand
	if i % 3 == 0 || i % 5 == 0 	# if multiple of 3 or 5
		total += i 	# add to the total
	end
end

puts total 	# answer is 233,168