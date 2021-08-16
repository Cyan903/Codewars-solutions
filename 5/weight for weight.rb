# https://www.codewars.com/kata/55c6126177c9441a570000cc

def order_weight(strng)
    l = strng.split " "
    s = l.map {|o| o.split("").map(&:to_i).inject(:+)}  
    t = []
    
    l.map!(&:to_i)
    p l, s
    
    while l.size != 0
        ind = s.find_index s.max
        
        t << l[ind]
        l.delete_at ind
        s.delete_at ind
    end
    
    t.reverse!
    i = 0
    
    ev = -> o { o.to_s.split("").map(&:to_i).inject(:+) }
    while i < t.size-1
        if t[i].to_s > t[i+1].to_s and (ev.call(t[i]) == ev.call(t[i+1]))
            t[i], t[i+1] = t[i+1], t[i]
            i = 0
        end
        i += 1
    end
    
    t.join " "
end