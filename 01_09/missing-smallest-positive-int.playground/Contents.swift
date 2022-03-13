//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #9: Find the Missing Number
//: Implement an algorithm to find the smallest positive integer that does not occur in a given sequence. Note that the numbers are neither ordered nor unique.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
func smallestMissingNumber_v1(_ numbers: [Int]) -> Int {
    var smallestMissing = 1
    guard !numbers.isEmpty else {
        return smallestMissing
    }
    
    // sort input
    let sortedNumbers = numbers.sorted()
    
    // Check last (greatest) number
    // if smaller than or equal to 0, the smallest missing number is, again, 1
    if let greatest = sortedNumbers.last,
       greatest <= 0 {
        return smallestMissing
    }
    
    // Otherwise, loop through all the numbers and increase smallestMissing whenever a match is found
    for number in sortedNumbers {
        if smallestMissing == number {
            smallestMissing += 1
        }
    }
    
    return smallestMissing
}

func smallestMissingNumber_v2(_ numbers: [Int]) -> Int {
    var smallestMissing = 1
    guard !numbers.isEmpty else {
        return smallestMissing
    }
    
    // sort input
    let sortedPositiveNumbers = numbers.filter{ $0 > 0 }.sorted()
    var last = 0
    
    for number in sortedPositiveNumbers {
        // check for redundant numbers
        if last == number {
            continue
        } else if smallestMissing < number {
            return smallestMissing
        }
        
        smallestMissing += 1
        last = number
    }
    return smallestMissing
}

let numbers = [1, 4, 11, 111]//[-2, -1, 1, -2]//[-2, 4, 1, 2, 2, 2, 3, 8, 5, 5, 6, 7, 7, 10, 9]//[-1, 0, -3, 1]
print(smallestMissingNumber_v1(numbers))
