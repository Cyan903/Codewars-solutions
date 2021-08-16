# https://www.codewars.com/kata/5b077ebdaf15be5c7f000077

def count_sheep(n, s="")
    n.times {|o| s += "#{o+1} sheep..."}; s
end