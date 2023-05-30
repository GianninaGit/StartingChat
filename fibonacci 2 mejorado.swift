func fibonacci(n: Int) {
    var array = [0, 1]
    
    if n <= 0 {
        print("Error")
    }
    if n == 1 {
        print([array[n-1]])
    }
    if n >= 2 {
        var ultimo = array.last!
        var anteUltimo = array.last! - 1
        for _ in 2..<n {
            
            var suma = ultimo + anteUltimo
            array.append(suma)
            anteUltimo = ultimo
            ultimo = array.last!

        }
        
        print(array)
    }
}
fibonacci(n: 7)
fibonacci(n: 8)
fibonacci(n: 9)
fibonacci(n: 10)
