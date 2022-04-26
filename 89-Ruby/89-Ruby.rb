# project euler #89

def rom2int(s)
    sum = 0

    subrom = ['IV', 'IX', 'XL',  'XC',  'CD',   'CM'  ]
    subint = ['4,', '9,', '40,', '90,', '400,', '900,']

    addrom = ['I', 'V', 'X',  'L',  'C',   'D',   'M'    ]
    addint = ['1,','5,','10,','50,','100,','500,','1000,']

    for i in 0..(subrom.length - 1) do
        s.gsub!(subrom[i],subint[i])
    end
    for i in 0..(addrom.length - 1) do
        s.gsub!(addrom[i],addint[i])
    end
    
    s = s.split(',').collect{|n| n.to_i}
    sum = s.sum

    return sum
end

def int2rom(i)
    ints = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    nums = [0] * 13
    roms = ['M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I']
    for j in 0..(ints.length - 1) do
        nums[j] = i / ints[j]
        i %= ints[j]
    end
    s = ''
    for k in 0..(nums.length - 1) do
        s += ([roms[k]] * nums[k]).join
    end
    return s
end

f = File.readlines("/home/luke/Documents/p089_roman.txt")

old_f = f; new_f = f

old_f = f.collect{|n| n.gsub("\n","")}
new_f = f.collect{|n| int2rom(rom2int(n.gsub("\n","")))}

difflengths = [0] * (f.length)

for i in 0..(f.length - 1) do
    difflengths[i] = (old_f[i].length) - (new_f[i].length)
    print(old_f[i],", ",new_f[i],", ", difflengths[i],"\n")
end
p difflengths.sum