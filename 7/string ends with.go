// https://www.codewars.com/kata/51f2d1cafc9c0f745c00037d

package kata

import "strings"

func solution(str, ending string) bool {
    // Your code here!
    return strings.HasSuffix(str, ending)
}