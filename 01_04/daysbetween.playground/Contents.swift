//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #4: Count Days Between Two Dates
//: For this challenge, your task is to implement a function that takes two dates and returns the number of days between them.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
import Foundation

func daysIn24HoursBetween(from: Date, to: Date) -> Int? {
    Calendar.current.dateComponents([.day], from: from, to: to).day
}

func daysInMidnightsBetween(from: Date, to: Date) -> Int? {
    let calendar = Calendar.current
    
    let startOfDay1 = calendar.startOfDay(for: from)
    let startOfDay2 = calendar.startOfDay(for: to)
    
    return Calendar.current.dateComponents([.day], from: startOfDay1, to: startOfDay2).day
}

enum TimeUnit {
    case fullday
    case midnight
}

func daysBetween(from: Date, to: Date, unit: TimeUnit) -> Int? {
    let result: Int?
    let calendar = Calendar.current
    
    switch unit {
    case .fullday:
        result = calendar.dateComponents([.day], from: from, to: to).day
    case .midnight:
        let startOfDay1 = calendar.startOfDay(for: from)
        let startOfDay2 = calendar.startOfDay(for: to)
        
        result = Calendar.current.dateComponents([.day], from: startOfDay1, to: startOfDay2).day
    }
    
    return result
}


if let date1 = Calendar.current.date(bySettingHour: 23, minute: 59, second: 59, of: Date()),
   let date2 = Calendar.current.date(byAdding: DateComponents(second: 5), to: date1) {
/*
    if let days = daysIn24HoursBetween(from: date1, to: date2) {
        print(days)
    }

    if let midnights = daysInMidnightsBetween(from: date1, to: date2) {
        print(midnights)
    }
*/
    
    if let days = daysBetween(from: date1, to: date2, unit: .fullday) {
        print(days)
    }

    if let midnights = daysBetween(from: date1, to: date2, unit: .midnight) {
        print(midnights)
    }
}

