// https://www.codewars.com/kata/51fc12de24a9d8cb0e000001

package kata

import (
  "strings"
  "strconv"
)

func ValidISBN10(isbn string) bool {
    s, t := strings.Split(isbn, ""), 0
    if len(isbn) != 10 { return false }
  
    for i, v := range s {
        toI, err := strconv.Atoi(v)

        if err != nil && (v == "X" || v == "x") && i == 9 {
            t += (i+1)*10
        } else if err == nil {
            t += (i+1)*toI
        } else {
            return false
        }
    }

    return t % 11 == 0
}