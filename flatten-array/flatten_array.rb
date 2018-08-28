class FlattenArray
  def self.flatten(array)
    a = array
    a.flatten.compact
  end
end

FlattenArray.flatten([1, [2, 3, 4, 5, 6, 7], 8,[nil]])

module BookKeeping
  VERSION = 1
end