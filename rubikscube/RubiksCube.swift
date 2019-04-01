//
//  RubiksCube.swift
//  rubikscube
//
//  Created by Halwong on 2019/3/6.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

//F
//D'
//U
//F'

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
        print("U")
    }
    
    mutating func rotateUPrime() {
        rotateU()
        rotateU()
        rotateU()
        print("U'")
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
        print("R")
        
        right = rotateFace(face: right)
    }
    
    mutating func rotateRPrime() {
        rotateR()
        rotateR()
        rotateR()
        print("R'")
    }
    
    mutating func rotateD() {
        for i in 0 ..< 3 {
            let tmp = front[6 + i]
            front[6 + i] = left[6 + i]
            left[6 + i] = back[6 + i] // 反了
            back[6 + i] = right[6 + i] // I see
            right[6 + i] = tmp // 还有错，uncle
        }
        print("D")
        down = rotateFace(face: down)
    }
    
    mutating func rotateDPrime() {
        rotateD()
        rotateD()
        rotateD()
        print("D'")
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
        
        print("L")
        left = rotateFace(face: left)
    }
    mutating func rotateLPrime() {
        rotateL()
        rotateL()
        rotateL()
        print("L'")
    }
    
    mutating func rotateF() {
        let tmp6 = up[6]
        up[6] = left[8]
        left[8] = down[2]
        down[2] = right[0]
        right[0] = tmp6
        
        let tmp7 = up[7]
        up[7] = left[5]
        left[5] = down[1]
        down[1] = right[3]
        right[3] = tmp7
        
        let tmp8 = up[8]
        up[8] = left[2]
        left[2] = down[0]
        down[0] = right[6]
        right[6] = tmp8
        print("F")
        
        front = rotateFace(face: front)
    }
    
    mutating func rotateFPrime() {
        rotateF()
        rotateF()
        rotateF()
        print("F'")
    }
    
    mutating func rotateB() {
        rotateBPrime()
        rotateBPrime()
        rotateBPrime()
        print("B")
    }
    
    mutating func rotateBPrime() {
        let up0 = up[0]
        let up1 = up[1]
        let up2 = up[2]
        up[0] = left[6]
        left[6] = down[8]
        down[8] = right[2]
        right[2] = up0
        
        up[1] = left[3]
        left[3] = down[7]
        down[7] = right[5]
        right[5] = up1
        
        up[2] = left[0]
        left[0] = down[6]
        down[6] = right[8]
        right[8] = up2
        
        print("B'")
        
        back = rotateFace(face: back)
        back = rotateFace(face: back)
        back = rotateFace(face: back)
    }
    
    mutating func rotateCubeFR() {
        for i in 0 ..< 9 {
            let tmp = right[i]
            right[i] = front[i]
            front[i] = left[i]
            left[i] = back[i]
            back[i] = tmp
        }
        
        up = rotateFace(face: up)
        up = rotateFace(face: up)
        up = rotateFace(face: up)
        down = rotateFace(face: down)
    }
    
    mutating func rotateCubeFU() {
        for i in 0 ..< 9 {
            let tmp = front[i]
            front[i] = down[i]
            down[i] = back[8 - i]
            back[8 - i] = up[i]
            up[i] = tmp
        }
        
        
        left = rotateFace(face: left)
        left = rotateFace(face: left)
        left = rotateFace(face: left)
        right = rotateFace(face: right)
    }
    
    mutating func shuffle() {
        for _ in 0 ..< 10000 {
            let random: Int = Int(arc4random() % 12)
            
            if random == 0 {
                rotateU()
            } else if random == 1 {
                rotateUPrime()
            } else if random == 2 {
                rotateF()
            } else if random == 3 {
                rotateFPrime()
            } else if random == 4 {
                rotateR()
            } else if random == 5 {
                rotateRPrime()
            } else if random == 6 {
                rotateL()
            } else if random == 7 {
                rotateLPrime()
            } else if random == 8 {
                rotateD()
            } else if random == 9 {
                rotateDPrime()
            } else if random == 10 {
                rotateB()
            } else if random == 11 {
                rotateBPrime()
            }
        }
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
