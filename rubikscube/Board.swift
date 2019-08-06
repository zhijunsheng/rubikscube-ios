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

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
