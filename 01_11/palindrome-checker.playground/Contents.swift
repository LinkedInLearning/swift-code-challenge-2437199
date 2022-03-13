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
    let x = "Amore, Roma".reversed()
    "amor ,eromA"
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
