class Complement
  DNA_TO_RNA = {
  'G' => 'C',
  'C' => 'G',
  'T' => 'A',
  'A' => 'U'
  }

  def self.of_dna(string)
    return "" unless string.chars.all? { |dna| DNA_TO_RNA.keys.include? dna }
    s = string.chars.map! { |rna| DNA_TO_RNA[rna] }
    s.join
  end
end

Complement.of_dna('ACGTGGTCTTAA')