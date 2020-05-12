import UIKit

//MARK: - Book Example

func binarySearch<Element: Comparable>(list: [Element], item: Element) -> Int? {
    var low = 0
    var high = list.count - 1
    
    var mid: Int!
    var guess: Element!
    
    while low <= high {
        mid = (low + high) / 2
        guess = list[mid]
        
        if guess == item {
            return mid
        } else if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    
    return nil
}

var myList = [1, 3, 5, 7, 8, 10, 15, 21, 33, 44, 225]

binarySearch(list: myList, item: 7)
binarySearch(list: myList, item: 54)
binarySearch(list: myList, item: 33)
