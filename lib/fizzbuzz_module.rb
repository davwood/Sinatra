module Fizzbuzz

	def self.start(range)
		@range = range
		@fizzing_array = range.to_a
	end

	def self.fizzling
		@fizzing_array.map! do |number|
			if divisible_by_3?(number) && divisible_by_5?(number) then number = "Fizzbuzz"
				elsif divisible_by_3?(number) then number = "Fizz"
				elsif divisible_by_5?(number) then number = "Buzz"
				else number
			end
		end		
	
	end

	def self.fizzing_array
		@fizzing_array
	end

	def self.divisible_by_3?(number)
		number % 3 == 0
	end

	def self.divisible_by_5?(number)
		number % 5 == 0
	end

end
