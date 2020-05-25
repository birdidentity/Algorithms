import UIKit

func recursionCountdown(n: Int) {
    if n > 0 {
        recursionCountdown(n: n - 1)
    }
    
    print(n)
}

recursionCountdown(n: 6)

func recursionFactorial(n: Int) -> Int {
    return n == 1 ? 1 : n * recursionFactorial(n: n - 1)
}

recursionFactorial(n: 1)
recursionFactorial(n: 2)
recursionFactorial(n: 3)
recursionFactorial(n: 4)
recursionFactorial(n: 5)
recursionFactorial(n: 6)

let sumArr = [23, 43, 51, 43, 65, 23, 88, 99, 923]
let evenNumbers = [2, 4, 6, 8, 10, 12]

func recursionArraySum(arr: [Int]) -> Int {
    if arr.isEmpty {
        return 0
    } else {
        return arr.first! + recursionArraySum(arr: Array(arr[1..<arr.count]))
    }
}

recursionArraySum(arr: sumArr)
recursionArraySum(arr: evenNumbers)
