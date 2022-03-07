//import Foundation
// Challenge #1: Print the First N Odd Numbers

// The modulo operator
let n = 11
for number in 1...n {
    if number % 2 == 1 {
        print(number)
    }
}

// A shorter way using array filter() and modulo
print((1...n).filter{ $0%2 == 1 })

// Improved performance using bitwise xor
// The main idea behind this algorithm is that xor decrements the number if it's odd.
print((1...n).filter{ $0^1 == $0-1 })

// Using stride()
let oddNumbers = stride(from: 1, to: n+1, by: 2)
oddNumbers.forEach { print($0) }

stride(from: 1, to: n+1, by: 2).forEach {print($0)}
