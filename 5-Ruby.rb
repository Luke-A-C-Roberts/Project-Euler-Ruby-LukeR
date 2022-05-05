require 'prime'

a = (1..20)
    .to_a
    .collect{|n| Prime.prime_division(n)}
    .flatten
    .each_slice(2)
    .to_a

u = a.transpose[0].uniq
q = [0] * u.length

for i in 0..(u.length - 1) do
    for j in 0..(a.length - 1) do
        if a[j][1] > q[i] and a[j][0] == u[i] then
            q[i] = a[j][1]
        end
    end
end

lcm = [u,q]
    .transpose
    .collect{|n| [n[0]] * n[1]}
    .flatten
    .inject(:*)

p lcm