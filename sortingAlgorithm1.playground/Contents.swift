import UIKit

//MARK: - algorithm for smallest value in array

func findSmallest<Element: Comparable>(arr: [Element]) -> Int {
    var smallest = arr[0]
    var smallestIndex = 0
    
    for i in 1...arr.count {
        if arr[i] < smallest {
            smallest = arr[i]
            smallestIndex = i
        }
    }
    return smallestIndex
}

//MARK: - selection sort algorithm

func selectionSort<Element: Comparable>(arr: inout [Element]) {

    var tmpValue: Element!
    var index: Int!
    
    for i in 0..<arr.count {
        
        //taking an element from array for comparing
        tmpValue = arr[i]
        index = i
        
        for j in (i + 1)..<arr.count {
            //taking next element from array which value will be lower than current one
            if arr[j] < tmpValue {
                tmpValue = arr[j]
                index = j
            }
        }
        
        //swaping value with current i element and lowest one
        arr[index] = arr[i]
        arr[i] = tmpValue
    }
}

var arr = [3, 1, 6, 8, 4, 33, 2131, 14121 ,4342 , 423]
var stringArr = ["foo", "bar", "baz", "quuz"]

selectionSort(arr: &arr)
selectionSort(arr: &stringArr)


