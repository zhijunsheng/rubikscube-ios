//
//  Board.swift
//  rubikscube
//
//  Created by Peter Shi on 2019-07-27.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {
    var up: [CubeColor] = []
    var front: [CubeColor] = []
    var right: [CubeColor] = []
    var left: [CubeColor] = []
    var down: [CubeColor] = []
    var back: [CubeColor] = []
    
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
    
    /*
     
     0 1 2
     3 4 5
     6 7 8
     
     
     
     */
    var description: String {
        var desc: String = ""
        desc +=
"""
        _____
        
        \(up[0]) \(up[1]) \(up[2])
        \(up[3]) \(up[4]) \(up[5])
        \(up[6]) \(up[7]) \(up[8])
        
        \(front[0]) \(front[1]) \(front[2])  \(right[0]) \(right[1]) \(right[2])
        \(front[3]) \(front[4]) \(front[5])  \(right[3]) \(right[4]) \(right[5])
        \(front[6]) \(front[7]) \(front[8])  \(right[6]) \(right[7]) \(right[8])

 \(left[0]) \(left[1]) \(left[2])  \(down[0]) \(down[1]) \(down[2])
 \(left[3]) \(left[4]) \(left[5])  \(down[3]) \(down[4]) \(down[5])
 \(left[6]) \(left[7]) \(left[8])  \(down[6]) \(down[7]) \(down[8])
        
        \(back[0]) \(back[1]) \(back[2])
        \(back[3]) \(back[4]) \(back[5])
        \(back[6]) \(back[7]) \(back[8])
        _____
"""
        print(desc)
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
        up = cl(d: up)
        
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
        down = cl(d: down)
        

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
        right = cl(d: right)
        
        let down2 = down[2]
        let down5 = down[5]
        let down8 = down[8]
        
        down[2] = back[6]
        down[5] = back[3]
        down[8] = back[0]
        
        back[6] = up[2]
        back[3] = up[5]
        back[0] = up[8]
        
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
    
    mutating func turnL() {
        left = cl(d: left)
        
        let down0 = down[0]
        let down3 = down[3]
        let down6 = down[6]
        
        down[0] = front[0]
        down[3] = front[3]
        down[6] = front[6]
        
        front[0] = up[0]
        front[3] = up[3]
        front[6] = up[6]
        
        up[0] = back[8]
        up[3] = back[5]
        up[6] = back[2]
        
        back[2] = down6
        back[5] = down3
        back[8] = down0
    }
    
    mutating func turnLPrime() {
        turnL()
        turnL()
        turnL()
    }
    
    mutating func turnF() {
        front = cl(d: front)
        
        let down0 = down[0]
        let down1 = down[1]
        let down2 = down[2]
        
        down[0] = right[6]
        down[1] = right[3]
        down[2] = right[0]
        
        right[0] = up[6]
        right[3] = up[7]
        right[6] = up[8]
        
        up[6] = left[8]
        up[7] = left[5]
        up[8] = left[2]
        
        left[2] = down0
        left[5] = down1
        left[8] = down2
    }
    
    mutating func turnFPrime() {
        turnF()
        turnF()
        turnF()
    }
    mutating func turnB() {
        back = cl(d: back)

        let down6 = down[6]
        let down7 = down[7]
        let down8 = down[8]

        down[6] = left[0]
        down[7] = left[3]
        down[8] = left[6]

        left[0] = up[2]
        left[3] = up[1]
        left[6] = up[0]

        up[0] = right[2]
        up[1] = right[5]
        up[2] = right[8]

        right[2] = down8
        right[5] = down7
        right[8] = down6
    }
    
    mutating func turnBPrime() {
        turnB()
        turnB()
        turnB()
    }
    
    mutating func turnX() {
        let upe = up
        
        up = front
        front = down
        
        right = cl(d: right)
        
        let left0 = left[0]
        let left1 = left[1]
        let left3 = left[3]
        let left6 = left[6]
        
        left[0] = left[2]
        left[1] = left[3]
        left[2] = left[8]
        left[3] = left1
        left[5] = left[7]
        left[6] = left0
        left[7] = left3
        left[8] = left6
        
        down[0] = back[8]
        down[1] = back[7]
        down[2] = back[6]
        down[3] = back[5]
        down[4] = back[4]
        down[5] = back[3]
        down[6] = back[2]
        down[7] = back[1]
        down[8] = back[0]
        
        back[0] = upe[8]
        back[1] = upe[7]
        back[2] = upe[6]
        back[3] = upe[5]
        back[4] = upe[4]
        back[5] = upe[3]
        back[6] = upe[2]
        back[7] = upe[1]
        back[8] = upe[0]
    }
    
    mutating func turnXPrime() {
        turnX()
        turnX()
        turnX()
    }
    
    mutating func turnUD() {
        let fronte = front
        for i in 0..<9 {
            front[i] = left[i]
        }
        for i in 0..<9 {
            left[i] = back[i]
        }
        for i in 0..<9 {
            back[i] = right[i]
        }
        for i in 0..<9 {
            right[i] = fronte[i]
        }
        for _ in 0..<3 {
            up = cl(d: up)
        }
        down = cl(d: down)
    }
    
    mutating func turnLR() {
        let fronte = front
        for i in 0..<9 {
            front[i] = down[i]
        }
        for i in 0..<9 {
            down[8-i] = back[i]
        }
        for i in 0..<9 {
            back[i] = up[8-i]
        }
        for i in 0..<9 {
            up[i] = fronte[i]
        }
        for _ in 0..<3 {
            left = cl(d: left)
        }
        right = cl(d: right)
    }
    
    mutating func turnFB() {
        
    }
    
    mutating func cl(d: [CubeColor]) -> [CubeColor] {
        var dd = d
        let dd0 = dd[0]
        let dd1 = dd[1]
        let dd2 = dd[2]
        let dd5 = dd[5]
        
        dd[0] = dd[6]
        dd[1] = dd[3]
        dd[2] = dd0
        dd[3] = dd[7]
        dd[5] = dd1
        dd[6] = dd[8]
        dd[7] = dd5
        dd[8] = dd2
        
        return dd
    }
    
    mutating func scramble() {
        for _ in 1...120 {
            let randomInt = Int(arc4random()) % 12
            if randomInt == 0 {
                turnU()
            } else if randomInt == 1 {
                turnUPrime()
            } else if randomInt == 2 {
                turnD()
            } else if randomInt == 3 {
                turnDPrime()
            } else if randomInt == 4 {
                turnR()
            } else if randomInt == 5 {
                turnRPrime()
            } else if randomInt == 6 {
                turnL()
            } else if randomInt == 7 {
                turnLPrime()
            } else if randomInt == 8 {
                turnF()
            } else if randomInt == 9 {
                turnFPrime()
            } else if randomInt == 10 {
                turnB()
            } else if randomInt == 11 {
                turnBPrime()
            }
        }
    }
    
    
    mutating func reset() {
        up = [.W, .W, .W, .W, .W, .W, .W, .W, .W]
        front = [.R, .R, .R, .R, .R, .R, .R, .R, .R]
        right = [.B, .B, .B, .B, .B, .B, .B, .B, .B]
        left = [.G, .G, .G, .G, .G, .G, .G, .G, .G]
        down = [.Y, .Y, .Y, .Y, .Y, .Y, .Y, .Y, .Y]
        back = [.O, .O, .O, .O, .O, .O, .O, .O, .O]
    }
    
    mutating func setColor(color: CubeColor) {
        for i in 0...8 {
            up[i] = color
            front[i] = color
            right[i] = color
            left[i] = color
            down[i] = color
            back[i] = color
        }
    }
    // back = front
//    R' D R D F D' F' (2nd layer)
//    F U R U' R' F' (top face cross)
//    R U R' U R U U R' (top layer cross)
//    L' U R U' L U R' (rotate 3 top corners)
//    R' D' R D
    
}
