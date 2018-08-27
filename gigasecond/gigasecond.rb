=begin
Work out when a date reaches it's Giga second which is 10 
to the power of 9 (10,000,000,000) or 10 billion seconds. I
originally did this using + 10000000000 however then discovered
the Ruby power function which is any number or variable seperated
by ** such as :
10 ** 9 => 1000000000
43 ** 6 => 6321363049
=end

class Gigasecond
	def self.from(time)
		@time = time + 10 ** 9
		@time
	end
end

p Gigasecond.from(Time.utc(1982, 10, 21, 20, 0, 0))

module BookKeeping
	VERSION = 6
end