//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #11: Check Palindromes
//: The goal is to write a function that takes a string as input and determines whether or not the string is a palindrome.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
import Foundation
/*
func isPalindrome(_ text: String) -> Bool {
    let text = text.filter{$0.isLetter}
    
    guard text.count > 1 else {
        return true
    }
    
    let reversedChars = text.reversed()
    return String(reversedChars).caseInsensitiveCompare(text) == .orderedSame
}*/

func isPalindrome(_ text: String) -> Bool {
    let text = text.filter{$0.isLetter}
    
    guard text.count > 1 else {
        return true
    }
    
    let chars = Array(text.lowercased())
    
    var leftIndex = 0
    var rightIndex = chars.count - 1
    
    while leftIndex < rightIndex {
        if chars[leftIndex] != chars[rightIndex] {
            return false
        }
        leftIndex += 1
        rightIndex -= 1
    }
    
    return true
}

print(isPalindrome("Abba"))
print(isPalindrome("Swift"))
print(isPalindrome("Amore, Roma"))
print(isPalindrome("Red rum, sir, is murder"))
print(isPalindrome("A man, a plan, a canal: Panama"))
