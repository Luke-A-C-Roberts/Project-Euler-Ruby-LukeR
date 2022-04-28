a = (1..999).to_a.select{|n| (n % 3 == 0 or n % 5 == 0)}.sum
p a