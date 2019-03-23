//
//  RubiksCube.swift
//  rubikscube
//
//  Created by Halwong on 2019/3/6.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct RubiksCube {
    var up: [CellColor] = [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
    var front: [CellColor] = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
    var right: [CellColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var down: [CellColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    var left: [CellColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    var back: [CellColor] = [.orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange]
    
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
    
    mutating func rotateRPrime() {
        rotateR()
        rotateR()
        rotateR()
    }
    
    mutating func rotateD() {
        for i in 0 ..< 3 {
            let tmp = front[6 + i]
            front[6 + i] = right[6 + i]
            right[6 + i] = back[6 + i]
            back[6 + i] = left[6 + i]
            left[6 + i] = tmp
        }
        
        down = rotateFace(face: down)
    }
    
    mutating func rotateDPrime() {
        rotateD()
        rotateD()
        rotateD()
    }
    
    mutating func rotateL() {
        let front0 = front[0]
        front[0] = up[0]
        up[0] = back[2]
        back[2] = down[0]
        down[0] = front0
        
        let front3 = front[3]
        front[3] = up[3]
        up[3] = back[5]
        back[5] = down[3]
        down[3] = front3
        
        let front6 = front[6]
        front[6] = up[6]
        up[6] = back[8]
        back[8] = down[6]
        down[6] = front6
        
        left = rotateFace(face: left)
    }
    mutating func rotateLPrime() {
        rotateL()
        rotateL()
        rotateL()
    }
    
    mutating func rotateF() {
        
    }
    
    private func rotateFace(face: [CellColor]) -> [CellColor] {
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
