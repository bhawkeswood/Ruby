(1..100).each do |n|
		x = String.new
		x << "BitMaker" if n%3 == 0
		x << "Labs" if n%5 == 0
		x << n.to_s if x.empty?
		puts x
	end