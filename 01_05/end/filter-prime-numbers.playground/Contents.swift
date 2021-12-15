// Naive approach
// Traverse the array and check every element if it's a prime number
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
