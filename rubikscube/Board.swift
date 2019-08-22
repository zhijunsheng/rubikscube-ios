//
//  Board.swift
//  rubikscube
//
//  Created by Peter Shi on 2019-07-27.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {
    var up: [String] = []
    var front: [String] = []
    var right: [String] = []
    var left: [String] = []
    var down: [String] = []
    var back: [String] = []
    
    // [0, 1, 2, 3, 4, 5, 6]
    // ["M", "T", ...]
    // [.monday, .tue ]
    // ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
    //

    /*
     
           W W W
         W W W
       W W W     B
               B B
     R R R   B B B
     R R R   B B
     R R R   B
     
       W W W
       W W W
       W W W
     
       R R R  B B B
       R R R  B B B
       R R R  B B B
     
G G G  Y Y Y
G G G  Y Y Y
G G G  Y Y Y
     
       O O O
       O O O
       O O O
     
    */
    var description: String {
        var desc: String = ""
        desc +=
"""
        \(up[0]) \(up[1]) \(up[2])
        \(up[3]) \(up[4]) \(up[5])
        \(up[6]) \(up[7]) \(up[8])
        
        \(front[0]) \(front[1]) \(front[2]) 
        \(front[3]) \(front[4]) \(front[5])
        \(front[6]) \(front[7]) \(front[8])
"""
        return desc
//"""
//        W W W
//        W W W
//        W W W
//
//        R R R  B B B
//        R R R  B B B
//        R R R  B B B
//
// G G G  Y Y Y
// G G G  Y Y Y
// G G G  Y Y Y
//
//        O O O
//        O O O
//        O O O
//"""
    }
    
    // U, U', F, F', L, L', R, R'
    mutating func turnU() {
        let up0 = up[0]
        let up1 = up[1]
        let up2 = up[2]
        let up5 = up[5]
        
        up[0] = up[6]
        up[1] = up[3]
        up[2] = up0
        up[3] = up[7]
        up[5] = up1
        up[6] = up[8]
        up[7] = up5
        up[8] = up2
        
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
    
    mutating func turnUPrime() {
        turnU()
        turnU()
        turnU()
    }
    
    mutating func turnD() {
        let down0 = down[0]
        let down1 = down[1]
        let down6 = down[6]

        down[0] = down[2]
        down[1] = down[5]
        down[2] = down[8]
        down[3] = down1
        down[5] = down[7]
        down[6] = down0
        down[7] = down[3]
        down[8] = down6

        let front6 = front[6]
        let front7 = front[7]
        let front8 = front[8]

        front[6] = left[6]
        front[7] = left[7]
        front[8] = left[8]

        left[6] = back[6]
        left[7] = back[7]
        left[8] = back[8]

        back[6] = right[6]
        back[7] = right[7]
        back[8] = right[8]

        right[6] = front6
        right[7] = front7
        right[8] = front8
    }
    
    mutating func turnDPrime() {
        turnD()
        turnD()
        turnD()
    }
    
    mutating func turnR() {
        let right0 = right[0]
        let right1 = right[1]
        let right2 = right[2]
        let right5 = right[5]
        
        right[0] = right[6]
        right[1] = right[3]
        right[2] = right0
        right[3] = right[7]
        right[5] = right1
        right[6] = right[8]
        right[7] = right5
        right[8] = right2
        
        let down2 = down[2]
        let down5 = down[5]
        let down8 = down[8]
        
        down[2] = back[2]
        down[5] = back[5]
        down[8] = back[8]
        
        back[2] = up[2]
        back[5] = up[5]
        back[8] = up[8]
        
        up[2] = front[2]
        up[5] = front[5]
        up[8] = front[8]
        
        front[2] = down2
        front[5] = down5
        front[8] = down8
    }
    
    mutating func turnRPrime() {
        turnR()
        turnR()
        turnR()
    }
    
    mutating func turnLPrime() {
        let left0 = left[0]
        let left1 = left[1]
        let left2 = left[2]
        let left5 = left[5]
        
        left[0] = left[6]
        left[1] = left[3]
        left[2] = left0
        left[3] = left[7]
        left[5] = left1
        left[6] = left[8]
        left[7] = left5
        left[8] = left2
        
        let down0 = down[0]
        let down3 = down[3]
        let down6 = down[6]
        
        down[0] = back[0]
        down[3] = back[3]
        down[6] = back[6]
        
        back[0] = up[0]
        back[3] = up[3]
        back[6] = up[6]
        
        up[0] = front[0]
        up[3] = front[3]
        up[6] = front[6]
        
        front[0] = down0
        front[3] = down3
        front[6] = down6
    }
    
    mutating func turnL() {
        turnLPrime()
        turnLPrime()
        turnLPrime()
    }
    
    mutating func turnF() {
        let front0 = front[0]
        let front1 = front[1]
        let front2 = front[2]
        let front5 = front[5]
        
        front[0] = front[6]
        front[1] = front[3]
        front[2] = front0
        front[3] = front[7]
        front[5] = front1
        front[6] = front[8]
        front[7] = front5
        front[8] = front2
        
        let down6 = down[6]
        let down7 = down[7]
        let down8 = down[8]
        
        down[6] = right[0]
        down[7] = right[3]
        down[8] = right[6]
        
        right[0] = up[6]
        right[3] = up[7]
        right[6] = up[8]
        
        up[6] = left[0]
        up[7] = left[3]
        up[8] = left[6]
        
        left[0] = down6
        left[3] = down7
        left[6] = down8
    }
    
    mutating func turnFPrime() {
        turnF()
        turnF()
        turnF()
    }
    mutating func turnB() {
        let back0 = back[0]
        let back1 = back[1]
        let back2 = back[2]
        let back5 = back[5]

        back[0] = back[6]
        back[1] = back[3]
        back[2] = back0
        back[3] = back[7]
        back[5] = back1
        back[6] = back[8]
        back[7] = back5
        back[8] = back2

        let down0 = down[0]
        let down3 = down[3]
        let down6 = down[6]

        down[0] = right[0]
        down[3] = right[3]
        down[6] = right[6]

        right[0] = up[0]
        right[3] = up[3]
        right[6] = up[6]

        up[0] = left[0]
        up[3] = left[3]
        up[6] = left[6]

        left[0] = down0
        left[3] = down3
        left[6] = down6
    }
    
    // back = front
//    R' D R D F D' F' (2nd layer)
//    F U R U' R' F' (top face cross)
//    R U R' U R U U R' (top layer cross)
//    L' U R U' L U R' (rotate 3 top corners)
//    R' D' R D
    
    
    
}
