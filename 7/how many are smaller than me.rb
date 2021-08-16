# https://www.codewars.com/kata/56a1c074f87bc2201200002e

def smaller(arr)
    n = []
    arr.size.times {|i|
        j = 0
        arr[i..-1].each {|o| j += 1 if arr[i] > o}
        n.push j
    }
    n
end