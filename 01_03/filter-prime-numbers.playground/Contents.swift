//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #3: Find the Prime Numbers
//: Implement an algorithm that takes an array of positive integers and returns all the prime numbers in that array. If the input array does not contain any prime numbers, return an empty array.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
// Traverse the array and check if each number is divisible by any of the previous numbers, except for one and itself
func findPrimes(numbers: [UInt]) -> [UInt] {
    var primes = [UInt]()
    
    for number in numbers {
        // 0 and 1 are not prime numbers
        if number <= 1 {
            continue
        }
        // initialize isPrime to true
        var isPrime = true
        // check if the number is divisible by any number in the range [2, n-1]
        for i in 2..<number {
            // if it is divisible, set isPrime to false and exit the loop
            if number % i == 0 {
                isPrime = false
                break
            }
        }
        // if isPrime still holds the value true, we've got a prime number and we'll add it to the list
        if isPrime {
            primes.append(number)
        }
    }
    
    return primes
}


print(findPrimes(numbers: [0, 1, 2, 5, 7, 9, 57, 59]))
print(findPrimes(numbers: [1, 4, 6, 8]))
