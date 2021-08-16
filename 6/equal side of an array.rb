# https://www.codewars.com/kata/5679aa472b8f57fb8c000047

def find_even_index(a)
    a.length.times {|i| return i if a[0..i].inject(:+) == a[i..-1].inject(:+)}; -1
end