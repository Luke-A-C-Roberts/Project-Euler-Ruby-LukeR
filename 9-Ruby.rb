def triplet?(a,b,c)
    if (a < b and b < c) and ((a ** 2) + (b ** 2) == (c ** 2)) then
        return true
    else
        return false
    end
end

a = (200..500).to_a
    .combination(3).to_a
    .select!{|n| triplet?(n[0], n[1], n[2])}

b = a.collect{|n| n.sum}

c = a[b.find_index(1000)]

prod = c.inject(:*)

p prod