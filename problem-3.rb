=begin
This is my solution to Project Euler Problem 3.	
Instructions:
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?

The Odin Project modified the requirements for this problem to take only numbers 
under 100,000. My solution works for the example problem, but takes too long to 
calculate to run 600851475143. This can be avoided if the factors are limited 
to 7,000 on line 33.
=end

# Function to determine if a number is prime
def is_prime(number)
	if number < 2
		return false
	end
	for i in 2...number do
		if number % i == 0
			return false
			break
		end
	end
	return true
end

# This function finds a number's factors and checks if each is prime.
# If a factor is prime, it is set as the largest prime factor
# Because the array of factors is in order from smallest to largest, 
# the last added prime factor will be the largest prime factor
def find_largest_prime(number)
	number_factors = []
	for i in 1..number/2	# Change 'number/2' to 7000 to try function on 600851475143
		if number % i == 0	
			number_factors.push(i)
		end
	end
	largest_prime_factor = 0
	number_factors.each do |i|
		if is_prime(i)
			largest_prime_factor = i
		end
	end
	puts largest_prime_factor
end

find_largest_prime(13195) # Evaluates to 29. Original problem evaluates to 6,857

	