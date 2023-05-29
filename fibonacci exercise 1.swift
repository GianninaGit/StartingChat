func fibonacci(n: Int) {
    var n1 = 0
    var n2 = 1
    
    if n == 0 {
        print("Invalid")
    } else if n == 1 {
        print([n1])
    } else {
        var array = [0, 1]
        for _ in 2..<n {
            var n3 = n1 + n2
            n1 = n2
            n2 = n3
            array.append(n3)
        }
        print(array)
    }
                
    
}
fibonacci(n: 10)
