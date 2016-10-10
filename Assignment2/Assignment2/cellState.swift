//
//  cellState.swift
//  Assignment2
//
//  Created by Sams on 10/5/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import Foundation

enum CellState {
    case Alive
    case Empty
    case Born
    case Died
    
    func isAlive() -> Bool {
        switch self {
        case .Alive, .Born:
            return true
        case .Empty, .Died:
            return false
        }
    }
    
    func displayValue() -> String {
        switch self {
        case .Alive:
            return "Alive"
        case .Empty:
            return "Empty"
        case .Born:
            return "Born"
        case .Died:
            return "Died"
        }
    }
}

typealias Position = (x: Int, y: Int)

let offsets: [Position] = [
    (x: -1, y: 1) , (x: 0, y: 1 ), (x: 1, y: 1 ),
    (x: -1, y: 0) ,                (x: 1, y: 0 ),
    (x: -1, y: -1), (x: 0, y: -1), (x: 1, y: -1)
]
