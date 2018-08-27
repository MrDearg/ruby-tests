=begin
	compare two strings and confirm they are of equal length - done
	convert each string into an array - done
	using the index of each item in the array's, compare that the same index and 
	alue of the comparable string
	increase hamming counter each time there is a mutation
	show the final hamming counter total
	raise an argument error of either string is of differeing length - done
=end
	
class Hamming
	def self.compute(strand_1, strand_2)
		raise ArgumentError if strand_1.length != strand_2.length
		@s1 = strand_1.chars
		@s2 = strand_2.chars
		@hamming_count = 0
		
		@s1.each_index do |sample|
			@hamming_count += 1 if @s1.values_at(sample) != @s2.values_at(sample)
		end

		@hamming_count
	end
end

p Hamming.compute('GATACA', 'GATACA')