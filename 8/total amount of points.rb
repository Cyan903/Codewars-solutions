# https://www.codewars.com/kata/5bb904724c47249b10000131

def points(games)
    j = 0
    for i in games
        if i[0] > i[-1] then j += 3; end
        if i[0] == i[-1] then j += 1; end
    end
    j
end