//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #10: Generate Random Passwords
//: Build a function that generates random passwords consisting of letters, numbers, and special characters.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
import Foundation

func generatePassword(length: Int) -> String {
    // The character set used to build the password
    var passwordCharSet = "abcdefghijklmnopqrstuvwxyz"
    passwordCharSet += passwordCharSet.uppercased()
    passwordCharSet += "!@#$%^&*()-_=+\""
    passwordCharSet += "1234567890"
    
    /*
    var password = ""
    for i in 0..<length {
        if let randomChar = passwordCharSet.randomElement() {
            password.append(randomChar)
        }
    }
    
    return password
    */
    // Short version
    return String((0..<length).compactMap{ _ in passwordCharSet.randomElement() })
}

print(generatePassword(length: 8))
