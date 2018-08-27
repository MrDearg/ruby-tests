class HappyBirthday

	def initialize(birth_date)
		@birth_date = birth_date
		HappyBirthday.how_old(@birth_date)
	end

	def self.how_old(dob)
		dob = dob
		today = Time.now
		calculate_age = today - dob
		age = calculate_age / 31556952.to_i
		rounded_age = age.to_i
		HappyBirthday.spank(rounded_age)
	end

	def self.spank(rounded_age)
		@spanks = rounded_age
		puts "SPANK!" * rounded_age
	end

end

puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

spank = HappyBirthday.new(Time.mktime(year, month, day))