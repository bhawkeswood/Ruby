module Honda
	class Bike
	end
end

module Specialized
	class Bike  #Last so it will be the one written
	end
end

#unless you reference them like so...

specialized_bike = Specialized::Bike
honda_bike = Honda::Bike