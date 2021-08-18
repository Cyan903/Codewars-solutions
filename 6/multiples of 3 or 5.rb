# https://www.codewars.com/kata/514b92a657cdc65150000006

def solution(n)
    a = []
    n.times {|o| a << o if o % 3 == 0 or o % 5 == 0}
    a.inject(:+)
end