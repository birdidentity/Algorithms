import UIKit

func recursionCountdown(n: Int) {
    if n > 0 {
        recursionCountdown(n: n - 1)
    }
    
    print(n)
}

recursionCountdown(n: 6)
