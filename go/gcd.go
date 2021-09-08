package main

import "fmt"

func main() {
    a , b := 120, 3000
    fmt.Println("This is the result:", gcd(a, b))
}

func gcd(a, b int) int {
    if a % b == 0 {
        return b
    } else {
        return gcd(b, a % b)
    }
}
