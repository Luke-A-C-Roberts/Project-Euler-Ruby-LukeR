ispal = ->(n){return n.to_s == n.to_s.reverse}
max, a, b = 0, 0, 0
for i in (100..999) do
    for j in (i..999) do
        if ispal.call(i*j) then
            max, a, b = i * j, i, j
        end
    end
end
print(a," * ",b," = ",max)
