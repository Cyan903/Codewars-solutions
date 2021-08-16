# https://www.codewars.com/kata/52774a314c2333f0a7000688

def valid_parentheses s
	n = 0
	s.each_char {|o|
    	n += (o == "(" ? 1 : (o == ")" ? -1 : 0))
    	return false if n == -1
	}
  
	n == 0
end