=begin
This time without relying upon the index of two array comparisons and using the 
Array#Zip method to compare strings
=end
	
class Hamming
	def self.compute(strand_1, strand_2)
		raise ArgumentError if strand_1.length != strand_2.length
		@s1 = strand_1.chars
		@s2 = strand_2.chars
		@hamming_count = 0
		@s1.zip(@s2).count { |a, b| @hamming_count =+ 1 if a == b }
		@hamming_count
	end
end

p Hamming.compute('GATACAF', 'GATACAB')