//: Playground - noun: a place where people can play

import UIKit

var numbersArray = [1, 4, 6, 2, 8]

for i in 0...(numbersArray.count - 2) { //n个数进行排序，只要进行（n - 1）轮操作
   
    //开始一轮操作
    for j in 0...(numbersArray.count - i - 2){
    
        if numbersArray[j] < numbersArray[j + 1] {
            
            swap(&numbersArray[j], &numbersArray[j + 1])
    
        }
    }
    
}

print(numbersArray)
