=begin
A leap year is valid on every year that is evenly divisible by 4
unless that year that is also evenly divisible by 100 or 400
Using the % operator which returns 0 where a number is divisable without 
remainder. Also improved this a little by removing the @date variable on line 10
=end

class Year
	def self.leap?(date)
		leap_year?(date)
	end

	def self.leap_year?(year)
  	(year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
	end
end

p Year.leap?(2016)

module BookKeeping
	VERSION = 3
end