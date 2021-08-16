# https://www.codewars.com/kata/55908aad6620c066bc00002a

def XO(s)
    (s = s.downcase).count("x") == s.count("o")
end