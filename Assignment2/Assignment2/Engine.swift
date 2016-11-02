//
//  Engine.swift
//  Assignment2
//
//  Created by Sams on 10/24/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import Foundation

func step() ->() {
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
            }
        }

    let numberOfTrue = (0 ..< before.count).reduce(0) { (accum, row) in
    return accum + before[row].filter { $0 }.count
    
}
    


func step2 () ->() {
    var after = [[Bool]](repeating: arrayElement, count:10)
    for i in 0 ..< arrayElement.count {
        for j in 0 ..< before.count {
            
            typealias Position = (x: Int, y: Int)
            
            let offsets: [Position] = [
                (x: -1, y: 1) , (x: 0, y: 1 ), (x: 1, y: 1 ),
                (x: -1, y: 0) ,                (x: 1, y: 0 ),
                (x: -1, y: -1), (x: 0, y: -1), (x: 1, y: -1)
            ]
            
            
            let neighbors = offsets.map {
                (x: ((i + $0.x) + arrayElement.count) % arrayElement.count,
                 y: ((j + $0.y) + before.count) % before.count)
            }
            
            print (neighbors)
            
            let livingNeighbors = neighbors.reduce(0) {
                print("Column = \($1.x), Row = \($1.y), alive = \( before[$1.y][$1.x])")
                return before[$1.y][$1.x] ? $0 + 1 : $0
            }
            print (livingNeighbors)
            
            var willLive = false
            switch livingNeighbors {
            case 2 where before[j][i],
                 3:
                willLive = true
            default:
                willLive = false
            }
            print("Row = \(j), column = \(i), living Neighors = \(livingNeighbors), current Value = \(before[j][i]), next value = \(willLive)")
            
            after[j][i] = willLive
        }
    }
    
    var isLiving = after.count
    }
    
    

}
