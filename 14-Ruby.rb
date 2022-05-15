colatz = ->(n){ n % 2 == 0 ? n / 2 : 3 * n + 1 }

maxchain = []
for i in 2..999999 do
    chain = [i]
    j = i
    while j != 1 do
        j = colatz.call(j)
        chain.append(j)
    end
    if chain.length > maxchain.length then
        maxchain = chain
    end
end

p maxchain[0]