#
# reading through the ruby docs it seems Array#flatten is designed
# to take an existing array of multiple levels and flatten those 
# contents into a new array at the same root level.
# Further research on the Array#compact method removes any value
# in an Array of any level that is nil so i chose to first
# flatten and then use compact just incase flatten inherited any
# nil values during conversion.
# 

class FlattenArray
	def self.flatten(array)
		@array = array
		array.flatten.compact
	end
end

p FlattenArray.flatten([1, [2, 3, 4, 5, 6, 7], 8,[nil]])

module BookKeeping
	VERSION = 1
end