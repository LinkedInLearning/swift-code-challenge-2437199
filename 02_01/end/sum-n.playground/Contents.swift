/*func sum(n: UInt) -> UInt {
    var result: UInt = 0
    
    for i in 1...n {
        result += i
    }
    
    return result
}*/

func sum(n: UInt) -> UInt {
    n * (n + 1) / 2
}

print(sum(n: 5))
print(sum(n: 20))
