def tri(n)
    (1..n).sum
end

def div(n)
    d = []
    i = n
    while i > 0 do
        if n % i == 0 then
            d.append(i)
        end
        i -= 1
    end
    return d.count
end

d = 0; i = 1; t = 0
until d >= 500 do
    t = tri(i)
    d = div(t)
    i += 1
end

p t