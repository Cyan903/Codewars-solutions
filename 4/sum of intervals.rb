# https://www.codewars.com/kata/52b7ed099cdc285c300001cd

def sum_of_intervals(n, i=[])
    n.each {|x| i << (x[0]...x[1]).to_a}
    i.flatten.uniq.size
end