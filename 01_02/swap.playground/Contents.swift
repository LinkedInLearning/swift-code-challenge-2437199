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
