//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #5: Calculate Sum(n)
//: Your task is to write a function that calculates the sum of the first N natural numbers.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
/*func sum(n: UInt) -> UInt {
    var result: UInt = 0
    
    for i in 1...n {
        result += i
    }
    
    return result
}*/

func sum(n: UInt) -> UInt {
    n * (n + 1) / 2
}

print(sum(n: 5))
print(sum(n: 20))
