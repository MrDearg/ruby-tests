class Phrase
  def self.word_count(word)
    word = word.split
    counts = Hash.new(0)
    word.each { |w| counts[w] += 1 }
    counts
  end
end

Phrase.word_count("word")