// https://www.codewars.com/kata/514b92a657cdc65150000006

package kata

func Multiple3And5(n int) int {
    a, sum := make([]int, 0), 0
  
    for i := 0; i < n; i++ {
        if i % 3 == 0 || i % 5 == 0 {
            a = append(a, i)
        }
    }
  
    for _, v := range a { sum += v }
    return sum
}