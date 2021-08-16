# https://www.codewars.com/kata/5629db57620258aa9d000014

def mix(s1, s2)
    t = []
    
    ("a".."z").each do |o|
        a, b = s1.count(o), s2.count(o)
        next if a <= 1 and b <= 1
    
        if a == b; sym, v = "/=:", o*a
        elsif a > b; sym, v = "/1:", o*a
        else
            sym, v = "/2:", o*b
        end
        
        t << [sym, v]
    end
  
    def sort(t)
        i = 0
        while i < t.size-1
            if yield(t, i)
                t[i], t[i+1], = t[i+1], t[i]
                i = -1
            end
            i += 1
        end
    end

    sort(t) {|t, i| t[i].join.size < t[i+1].join.size}
    sort(t) {|t, i| t[i][1][0].ord+t[i][1][1].ord > t[i+1][1][0].ord+t[i+1][1][1].ord and (t[i].join.size == t[i+1].join.size)}
    sort(t) {|t, i| t[i][0][-2].ord > t[i+1][0][-2].ord and (t[i].join.size == t[i+1].join.size)}

    t = t.join
    t.slice! 0
    
    t
end