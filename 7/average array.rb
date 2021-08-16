# https://www.codewars.com/kata/596f6385e7cd727fff0000d6

def avg_array(arr)
    arr.transpose.map {|a| a.inject(:+).to_f/a.size.to_f}
end