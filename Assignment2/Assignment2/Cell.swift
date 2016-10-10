//
//  Cell.swift
//  Assignment2
//
//  Created by Sams on 10/5/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import Foundation

struct Cell {
    var pos: Position = (x:0, y:0)
    var state: CellState = .Empty
    var grid: Grid
    
    init(grid:Grid, pos:Position, state: CellState) {
        self.pos = pos
        self.state = state
        self.grid = grid
    }
    
    func neighbors() -> [Position] {
        return offsets.map {
            (x: ((pos.x + $0.x) + grid.cols) % grid.cols,
             y: ((pos.y + $0.y) + grid.rows) % grid.rows)
        }
    }
    
    func numLivingNeighbors () -> Int {
        return neighbors().reduce(0) {
            grid[$1.x,$1.y]?.state == .Alive ? $0 + 1 : $0
        }
    }
    
    func nextState() -> CellState {
        switch numLivingNeighbors() {
        case 2 where self.state.isAlive(),
             3:
            return .Alive
        default:
            return .Empty
        }
    }
    
    
}
