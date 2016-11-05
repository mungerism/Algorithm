//: Playground - noun: a place where people can play

import UIKit

var numbersArray = [1, 4, 6, 5, 8, 2]

func quicksort(left: Int, right : Int) -> Void {
    
    var i, j, pivot : Int
    
    if left > right {
        return
    }
    
    pivot = numbersArray[left]
    
    i = left
    j = right
    
    while i != j {
        
        while numbersArray[j] >= pivot && i < j {
            j -= 1
        }
        
        while numbersArray[i] <= pivot && i < j {
            i += 1
        }
        
        if i < j {
           swap(&numbersArray[i], &numbersArray[j])
        }
    }
    
    numbersArray[left] = numbersArray[i]
    numbersArray[i] = pivot
    
    quicksort(left: left, right: i - 1)
    quicksort(left: i + 1, right: right)
}

quicksort(left: 0, right: 5)

print(numbersArray)

