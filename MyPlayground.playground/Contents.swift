//: Playground - noun: a place where people can play

import UIKit

let arrayElement = [Bool](repeating: false, count: 10)
var before = [[Bool]](repeating: arrayElement, count:10)
// i is the columns and j is the rows
for i in 0 ..< arrayElement.count {
    for j in 0 ..< before.count {
        if arc4random_uniform(3) == 1 {
            var row = before[j]
            row[i] = true
            before[j] = row
            
        }
        print(before)
    }
}

