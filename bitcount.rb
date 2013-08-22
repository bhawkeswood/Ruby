puts (1..100).map {|i|
	b = i % 3 == 0 ? 'BitMaker' : nil
	l = i % 5 == 0 ? 'Labs' : nil
	b || l ? "#{b}#{l}" : i 
	}