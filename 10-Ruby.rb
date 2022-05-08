require 'prime'
s = 0
for i in 0..2000000 do
    Prime.prime?(i) ? s += i : 0
end
p s