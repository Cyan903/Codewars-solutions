// https://www.codewars.com/kata/525f50e3b73515a6db000b83

package kata

import (
	"fmt"
	"strings"
)

func con(arr []uint, d string) string {
	return strings.Trim(strings.Replace(fmt.Sprint(arr), " ", d, -1), "[]")
}

func CreatePhoneNumber(numbers [10]uint) string {
	return fmt.Sprintf("(%v) %v-%v", con(numbers[0:3], ""), con(numbers[3:6], ""), con(numbers[6:10], ""))
}
