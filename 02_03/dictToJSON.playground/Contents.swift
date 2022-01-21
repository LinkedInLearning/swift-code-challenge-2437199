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
