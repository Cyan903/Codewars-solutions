// https://www.codewars.com/kata/586d6cefbcc21eed7a001155

package kata

func GetRepeat(str string, ind, n int) int {
    if len(str)-1 <= ind {
        return n+1
    } else if str[ind] == str[ind+1] {
        return GetRepeat(str, ind+1, n+1)
    }
  
    return n+1
}

func LongestRepetition(text string) Result {
    largest := Result{0, 0}
  
    for a, _ := range text {
        d := GetRepeat(text, a, 0)
    
        if d > largest.L {
            largest.L = d
            largest.C = rune(text[a])
        }
    }
  
    return largest
}