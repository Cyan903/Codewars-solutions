# https://www.codewars.com/kata/5a6663e9fd56cb5ab800008b

def human_years_cat_years_dog_years(human_years)
    c = [15, 9]
    
    dog = 0
    cat = 0
    
    human_years.times {|o| dog += (c[o] || 5) }
    human_years.times {|o| cat += (c[o] || 4) }
    
    [human_years, cat, dog]
end    