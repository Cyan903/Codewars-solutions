# https://www.codewars.com/kata/530e15517bc88ac656000716

def rot13(s)
    a, b = ("A".."Z").to_a, ("a".."z").to_a
    s.size.times {|i|
        (/[[:upper:]]/.match(s[i]) ? 
            s[i] = a[(a.index(s[i])+13)%a.size]
        : (/[[:lower:]]/.match(s[i]) ?
            s[i] = b[(b.index(s[i])+13)%b.size]
        : nil))
    }
    return s
end