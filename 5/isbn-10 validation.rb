# https://www.codewars.com/kata/51fc12de24a9d8cb0e000001

def validISBN10 isbn
	isbn[0..8].each_char {|x| return false if ("A".."z").to_a.include? x}
	n, s = isbn.split("").each {|o| o.to_s.sub! "X", "10"}.map(&:to_i), 0
	n.size.times {|x| s += (x+1)*(n[x]) }

	return false if (n.size != 10) or ((n.count(10) >= 1) && (n[9] != 10))
	s%11 == 0
end