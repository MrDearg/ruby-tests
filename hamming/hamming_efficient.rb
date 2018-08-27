##
# This time without relying upon the index of two array comparisons and using the 
# Array#Zip method to compare strings.
# Also using Enumerable#count on Zip to replace @hamming_count variable
##
	
class Hamming
	def self.compute(strand_1, strand_2)
		raise ArgumentError if strand_1.length != strand_2.length
		s1 = strand_1.chars
		s2 = strand_2.chars
		s1.zip(s2).count { |a, b| a != b }
	end
end

p Hamming.compute('ABCDEF', 'ABCDEF')