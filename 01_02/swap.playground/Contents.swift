//: **Swift Code Challenges**
//:
//: Source Code
//: _ _ _
//: ## Challenge #2: Swap Values
//: Your goal is to write a function that exchanges the value of the two passed in arguments. The function should work with any type.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//: ---
/*func swap<E>(left: inout E, right: inout E) {
    let tmp = left
    left = right
    right = tmp
}*/

/*func swap<E: Equatable>(left: inout E, right: inout E) {
    guard left != right else {
        return
    }
    let tmp = left
    left = right
    right = tmp
}*/

func swap<E: Equatable>(left: inout E, right: inout E) {
    guard left != right else {
        return
    }
    
    (left, right) = (right, left)
}

var f = "foo"
var b = "bar"
swap(left: &f, right: &b)
print("f: \(f), b: \(b)")
