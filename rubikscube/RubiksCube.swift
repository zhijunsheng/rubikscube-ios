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
        for i in 0 ..< 3 {
            let tmp = front[i]
            front[i] = right[i]
            right[i] = back[i]
            back[i] = left[i]
            left[i] = tmp
        }
    }
}
