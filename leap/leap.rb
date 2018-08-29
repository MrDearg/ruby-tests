class Year
	def self.leap?(date)
		leap_year?(date)
	end

	def self.leap_year?(year)
  	(year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
	end
end

p Year.leap?(1752)

module BookKeeping
	VERSION = 3
end