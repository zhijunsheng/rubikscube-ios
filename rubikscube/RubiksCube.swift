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
        let tmp0 = up[0]
        let tmp1 = up[1]
        let tmp2 = up[2]
        let tmp5 = up[5]
        
        up[0] = up[6]
        up[1] = up[3]
        up[2] = tmp0
        up[3] = up[7]
        up[5] = tmp1
        up[6] = up[8]
        up[7] = tmp5
        up[8] = tmp2
    }
    
    mutating func rotateUPrime() {
        for i in 0 ..< 3 {
            let tmp = front[i]
            front[i] = left[i]
            left[i] = back[i]
            back[i] = right[i]
            right[i] = tmp
        }
        
        let tmp0 = up[0]
        let tmp1 = up[1]
        let tmp3 = up[3]
        let tmp6 = up[6]
        
        up[0] = up[2]
        up[1] = up[5]
        up[2] = up[8]
        up[3] = tmp1
        up[5] = up[7]
        up[6] = tmp0
        up[7] = tmp3
        up[8] = tmp6
        
    }
    
    mutating func rotateR() {
//        for i in 1 ..< 4 {
//            let tmp = front[i + 3] //
//            front[i] = down[i * 3]
//            down[i] = back[i * 3]
//            back[i] = up[i * 3]
//            up[i] = tmp
//        }
        front[2] = down[2]
        up[2] = front[8]
        right[0] = right[6]

    }
}
