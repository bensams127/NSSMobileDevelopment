//
//  Engine.swift
//  Assignment2
//
//  Created by Sams on 10/24/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import Foundation

func step (_: ([[Bool]]) -> [[Bool]]) {
    let arrayElement = [Bool](repeating: false, count: 10)
    var before: [[Bool]] = [[Bool]](repeating: arrayElement, count:10)
    for i in 0 ..< arrayElement.count {
        for j in 0 ..< before.count {
            if arc4random_uniform(3) == 1 {
                before[i][j] = true
                
                let numberOfTrue = (0 ..< before.count).reduce(0) { (accum, row) in
                    return accum + before[row].filter { $0 }.count
                    
                    
                    
                }
                print (numberOfTrue)
                
                let trueNumber = numberOfTrue
                let allTheTrue = trueNumber
                print (trueNumber)
                print (allTheTrue)
            }
            
            
            
            //}
        }
        
    }
}
