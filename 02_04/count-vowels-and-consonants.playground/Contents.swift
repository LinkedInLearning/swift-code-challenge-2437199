func countVowelsAndConsonants(_ text: String) -> (vowels: Int, consonants: Int) {
    
    var vowels = 0
    var consonants = 0
    
    // remove punctuation marks
    let letters = text.filter{$0.isLetter}
    if letters.isEmpty {
        return (vowels, consonants)
    }
        
    let lowerCaseLetters = letters.lowercased()
    lowerCaseLetters.forEach { char in
        switch char {
        case "a", "e", "i", "o", "u":
            vowels += 1
        default:
            consonants += 1
        }
    }
    
    return (vowels, consonants)
}

let text = "Isn't Swift fun?"
let vowelAndConsonantCount = countVowelsAndConsonants(text)
print("There are \(vowelAndConsonantCount.vowels) vowels and \(vowelAndConsonantCount.consonants) consonants in \n\t\"\(text)\"")
