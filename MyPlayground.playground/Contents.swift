
func fibonacci(n: Int) {
    var array = [0, 1]
    
    if n <= 1 {
        print([array[0]])
    } else {
        let suma = (array.count - 1) + (array.count - 2)
        array.append(suma)
    }
    print(array)
 
}

//fibonacci(n: 0) // [] ok
//fibonacci(n: 1) // [0]
fibonacci(n: 2) // [0, 1]
//fibonacci(n: 3) // [0, 1, 1]
//fibonacci(n: 4) // [0, 1, 1, 2]
//fibonacci(n: 5) // [0, 1, 1, 2, 3]
