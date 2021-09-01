# https://www.codewars.com/kata/51fc12de24a9d8cb0e000001

def validISBN10 isbn
	isbn[0..8].each_char {|x| return false if ("A".."z").include? x}
	n, s = isbn.split("").each {|o| o.sub! "X", "10"}, 0
	n.size.times {|x| s += (x+1)*(n[x]).to_i}

	s%11 == 0 && (!(n.size != 10) || ((n.count(10) >= 1) && (n[9] != 10)))
end