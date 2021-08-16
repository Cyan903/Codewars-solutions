# https://www.codewars.com/kata/5502c9e7b3216ec63c0001aa

def open_or_senior(data)
    data.map {|o| o[0] >= 55 && o[1] > 7 ? "Senior" : "Open"}
end