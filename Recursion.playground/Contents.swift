import UIKit

func recursionCountdown(n: Int) {
    if n > 0 {
        recursionCountdown(n: n - 1)
    }
    
    print(n)
}

recursionCountdown(n: 6)

func recursionFactorial(n: Int) -> Int {
    var result = n
    
    if n > 2 {
       result *= recursionFactorial(n: n - 1)
    }
    
    return result
}

recursionFactorial(n: 1)
recursionFactorial(n: 2)
recursionFactorial(n: 3)
recursionFactorial(n: 4)
recursionFactorial(n: 5)
recursionFactorial(n: 6)
