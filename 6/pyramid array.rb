# https://www.codewars.com/kata/515f51d438015969f7000013

def pyramid(n)
    a = []
    n.times {|o| a << [1]*(o+1)}; a
end