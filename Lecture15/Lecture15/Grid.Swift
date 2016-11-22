//
//  Grid.Swift
//  Lecture15
//
//  Created by Sams on 11/14/16.
//  Copyright © 2016 ComputeCycles, LLC. All rights reserved.
//

import Foundation

typealias Position = (x: Int, y: Int)

private let offsets: [Position] = [
    (x: -1, y: 1) , (x: 0, y: 1 ), (x: 1, y: 1 ),
    (x: -1, y: 0) ,                (x: 1, y: 0 ),
    (x: -1, y: -1), (x: 0, y: -1), (x: 1, y: -1)
]

struct GridCell {
    var pos: Position
    var state: GridCellState
    var grid: Grid
    
    init(grid:Grid, pos:Position, state: GridCellState) {
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
    
    func nextState() -> GridCellState {
        switch numLivingNeighbors() {
        case 2 where self.state.isAlive(),
             3:
            return .Alive
        default:
            return .Empty
        }
    }
}


class Grid {
    var cells: [GridCell] = [GridCell]()
    var rows: Int = 0
    var cols: Int = 0
    
    init(rows: Int, cols: Int) {
        self.rows = rows
        self.cols = cols
        for i in 0 ..< cols {
            for j in 0 ..< rows {
                let randomState = GridCellState.Empty
                let cell = GridCell(grid: self,
                                    pos: (i, j),
                                    state: randomState)
                cells.append(cell)
            }
        }
    }
    
    subscript (x: Int, y: Int) -> GridCell? {
        get {
            guard x >= 0 && y >= 0 else { return nil }
            guard x < cols && y < rows else { return nil }
            return cells[(x*cols) + y]
        }
        set {
            guard let newValue = newValue else { return }
            guard x >= 0 && y >= 0 else { return }
            guard x < cols && y < rows else { return }
            cells[(x*cols) + y] = newValue
        }
    }
}

