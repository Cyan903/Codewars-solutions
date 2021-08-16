# https://www.codewars.com/kata/57eb8fcdf670e99d9b000272

def high(x)
    az, t = ("a".."z"), 0
    w = x.split " "
    sum  = []
    
    c = -> w {w.each_char {|o| t += az.find_index(o).to_i+1 }}
    w.each do |o|
        t = 0; c.call o
        sum << t
    end
    
    w[sum.find_index sum.max]
end