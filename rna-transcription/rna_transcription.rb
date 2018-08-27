=begin
a couple of things i learned here. Using a Hash as a constant to overwrite items we pass, locking down acceptible inputs using all? and include? and comparing that to the constant DNA_TO_RNA. Using .map! (with the bang) to modify the existing array rather than create a new array with the result and finally convert the array back to a string using .join rather than .to_s.
I feel there is room to make this better by not converting to an array twice, the first to check validity and again to convert DNA to RNA but i have not worked this out without breaking the tests.
=end

class Complement
	DNA_TO_RNA = {
		'G' => 'C',
		'C' => 'G',
		'T' => 'A',
		'A' => 'U'
	}

	def self.of_dna(string)
		return "" unless string.chars.all? { |dna| DNA_TO_RNA.keys.include? dna }
		@string = string.chars.map! { |rna| DNA_TO_RNA[rna] }
		@string.join
	end

end

p Complement.of_dna('ACGTGGTCTTAA')