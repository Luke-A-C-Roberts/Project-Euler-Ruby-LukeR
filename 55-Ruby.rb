a = (0..10000).to_a

for i in (0..50) do
    a.collect! { |n| s = n.to_s; s != s.reverse ? 
    s.reverse.to_i + n : n }
end

a.select! {|n| s = n.to_s; s == s.reverse}
print(a.length)
