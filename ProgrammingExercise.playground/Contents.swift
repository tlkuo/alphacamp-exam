//: Playground - noun: a place where people can play

import UIKit

// 回傳一個數字由小排到大，並且排除重複數字的 array
func sortArray(array1: [Int], array2: [Int]) -> [Int] {
    
    let combinedArray = array1 + array2
    var sortedArray: [Int] = []
    var index = 0

    for num in combinedArray {

        for sortedNum in sortedArray {
            
            if sortedNum < num {
                index += 1
            }
            else if sortedNum == num {
                break
            }
            else if sortedNum > num {
                sortedArray.insert(num, atIndex: index)
                break
            }
        }

        if index == sortedArray.count {
            sortedArray.append(num)
        }
        
        index = 0
    }
    
    return sortedArray
}

sortArray([1, 5, 3], array2: [2, 4, 3])
