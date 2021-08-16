# https://www.codewars.com/kata/586dd26a69b6fd46dd0000c0

def my_first_interpreter code
    c, e = 0, []
    code.each_char {|o|
        case o
            when "+"; (c >= 255 ? c = 0 : c += 1)
            when "."; e << c.chr
        end
    }

    e.join
end