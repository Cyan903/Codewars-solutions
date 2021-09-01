// https://www.codewars.com/kata/515f51d438015969f7000013

package kata

func Pyramid(n int) [][]int {
    a := make([][]int, n)

    for i := 0; i < n; i++ {
        a[i] = make([]int, i+1)
        for v := range a[i] { a[i][v] = 1 }
    }
  
    return a
}