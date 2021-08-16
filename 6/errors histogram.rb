# https://www.codewars.com/kata/59f44c7bd4b36946fd000052

def hist(t, s="")
    "uwxz".each_char {|i| ((v = t.count i) > 0 ? s += i+"  "+v.to_s+(" "*(6-(v.to_s.size)))+("*"*v)+"\r" : nil)}; s[0..-2]
end