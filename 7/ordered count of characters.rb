# https://www.codewars.com/kata/57a6633153ba33189e000074

def ordered_count(t, z=[])
    t.each_char {|i| t.count(i) >= 1 ? (z, t = z+[[i, t.count(i)]], t.delete(i)) : nil}; z
end