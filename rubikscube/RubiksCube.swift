//
//  RubiksCube.swift
//  rubikscube
//
//  Created by Halwong on 2019/3/6.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct RubiksCube {
    var up: [CellColor]
    var front: [CellColor]
    var right: [CellColor]
    var down: [CellColor]
    var left: [CellColor]
    var back: [CellColor]
    
    mutating func rotateU() {
        let front0 = front[0]
        let front1 = front[1]
        let front2 = front[2]
        
        front[0] = right[0]
        front[1] = right[1]
        front[2] = right[2]
        
        right[0] = back[0]
        right[1] = back[1]
        right[2] = back[2]
        
        back[0] = left[0]
        back[1] = left[1]
        back[2] = left[2]
        
        left[0] = front0
        left[1] = front1
        left[2] = front2
        
    }
}
