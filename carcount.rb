class Civic
	@@cars = 0

	def initialize
		@@cars = @@cars + 1
	end

	def start
		puts "Vroom Vroom"
	end

	def self.how_many_cars
		puts @@cars
	end
end

Civic.new
Civic.new
Civic.new
Civic.new
Civic.new

Civic.how_many_cars