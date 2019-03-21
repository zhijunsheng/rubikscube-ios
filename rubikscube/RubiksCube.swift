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
        up = rotateFace(face: up)
    }
    
    mutating func rotateUPrime() {
        rotateU()
        rotateU()
        rotateU()
    }
    
    mutating func rotateR() {
//        for i in 0 ..< 3 {
//            let tmp = front[2 + 3 * i]
//            front[2 + 3 * i] = down[2 + 3 * i]
//            down[2 + 3 * i] = back[6 - 3 * i]
//            back[3 * i] = up[8 - 3 * i]
//            up[2 + 3 * i] = tmp
//        }
        
        let front2 = front[2]
        let back0 = back[0]
        let up2 = up[2]
        front[2] = down[2]
        down[2] = back[6]
        back[0] = up[8]
        up[2] = front2
        
        let front5 = front[5]
        front[5] = down[5]
        down[5] = back[3]
        back[3] = up[5]
        up[5] = front5

        let front8 = front[8]
        front[8] = down[8]
        down[8] = back0
        back[6] = up2
        up[8] = front8
        
        right = rotateFace(face: right)
    }
    
    func rotateFace(face: [CellColor]) -> [CellColor] {
        var newFace = face
        let tmp0 = newFace[0]
        let tmp1 = newFace[1]
        let tmp2 = newFace[2]
        let tmp5 = newFace[5]
        
        newFace[0] = newFace[6]
        newFace[1] = newFace[3]
        newFace[2] = tmp0
        newFace[3] = newFace[7]
        newFace[5] = tmp1
        newFace[6] = newFace[8]
        newFace[7] = tmp5
        newFace[8] = tmp2
        
        return newFace
    }
}
