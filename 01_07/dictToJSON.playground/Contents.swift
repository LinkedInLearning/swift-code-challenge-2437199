//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #7: Convert Dictionary to JSON
//: Mapping dictionaries to JSON is a common task in programming. The goal is to implement a solution that's both concise and elegant.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
import Foundation

// 1. Using JSONEncoder
let colorsDict = ["red": "FF0000", "green": "00FF00", "blue": "0000FF"]

let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

// Note that the input value's type must adopt Codable
if let jsonData = try? encoder.encode(colorsDict) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}

// 2. Using JSONSerialization
if let jsonData = try? JSONSerialization.data(withJSONObject: colorsDict,
                                                 options: [.prettyPrinted]) {
    if let jsonString = String.init(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}

// 3. Elegance
extension Dictionary {
    func toJSONString() -> String? {
        guard let jsonData = try? JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted]) else {
            return nil
        }
        
        return String(data: jsonData, encoding: .utf8)
    }
}

if let jsonString = colorsDict.toJSONString() {
    print(jsonString)
}
