def fib(n)
    arr = []
    a = 1
    b = 2
    c = 0
    while (a < n) do
        arr.append(a)
        c = a + b
        a = b
        b = c 
    end
    return arr
end
x = fib(1000000).select{|n| n % 2 == 0}.sum
p x