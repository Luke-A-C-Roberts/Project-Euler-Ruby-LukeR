require 'prime'

def cr(n)
  s = n.to_s
  l = s.length
  arr = [0] * l
  for i in (0..(l-1)) do
    arr[i] = s
    s = s[l-1] + s[0..(l-2)]
  end
  arr.collect!{|n| n.to_i}
  return arr
end

a = (0..1000000)
  .to_a.collect{|x| cr(x)}
  .select{|x| x.all?{|y| y.prime?}}
  .count

p a