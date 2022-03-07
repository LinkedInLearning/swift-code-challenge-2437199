import Foundation

func generatePassword(length: Int) -> String {
    // The character set used to build the password will contain the lowercase and uppercase letters of the English alphabet, as well as numbers and special symbols
    var passwordCharSet = "abcdefghijklmnopqrstuvwxyz"
    passwordCharSet += passwordCharSet.uppercased()
    passwordCharSet += "!@#$%^&*()-_=+\""
    passwordCharSet += "1234567890"
    
    // Finally, I'll build the random password
    // I'll loop length times, and during each iteration, I'll retrieve a random element from the passwordCharSet array. The randomElement() method returns an optional value. Thus, I use optional binding to extract the value of the method call. If randomelement returns a valid value, I'll append it to the password.
    // Finally, I'll return the password
    /*
    var password = ""
    for i in 0..<length {
        if let randomChar = passwordCharSet.randomElement() {
            password.append(randomChar)
        }
    }
    
    return password
    */
    // Actually, I could turn this code into a one-liner by getting rid of the loop, and using a range and the compactMap array method. I'll use the range operator to create a range of the given length. This range will produce an array with the numbers 0 up to, but not including length.
    // compactMap runs the transformation provided in its closure with each element in the array, while removing the nil results. Thus, it will return an array containing the valid random elements from the passwordCharSet sequence.
    return String((0..<length).compactMap{ _ in passwordCharSet.randomElement() })
}

print(generatePassword(length: 8))
