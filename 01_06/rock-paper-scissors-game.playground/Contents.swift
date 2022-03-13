//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #6: Rock, Paper, Scissors
//: Your task is to write a Swift program that plays Rock, Paper, Scissors against a human player.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
enum Choice: String, CaseIterable {
    case rock
    case paper
    case scissors
}

enum Outcome: String {
    case win
    case lose
    case draw
}

func playRockPaperScissors(choice: Choice) -> Outcome {
    guard let computerChoice = Choice.allCases.randomElement() else {
        return .win
    }
    
    print("Computer: \t\(computerChoice.rawValue)")
    
    var result = Outcome.draw
    
    switch (choice, computerChoice) {
    case (.paper, .rock),
        (.scissors, .paper),
        (.rock, .scissors):
        result = .win
    case (.rock, .paper),
        (.paper, .scissors),
        (.scissors, .rock):
        result = .lose
    default:
        result = .draw
    }
    
    return result
}


let userChoice = Choice.rock
let result = playRockPaperScissors(choice: userChoice)
print("""
      You: \t\(userChoice.rawValue)
      Result: \t\(result.rawValue)
      """)


