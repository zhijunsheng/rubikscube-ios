//
//  Board.swift
//  rubikscube
//
//  Created by Peter Shi on 2019-07-27.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {
    var white: [String] = []
    var red: [String] = []
    var blue: [String] = []
    var green: [String] = []
    var yellow: [String] = []
    var orange: [String] = []
    
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
        \(white[0]) \(white[1]) \(white[2])
        \(white[3]) \(white[4]) \(white[5])
        \(white[6]) \(white[7]) \(white[8])
        
        \(red[0]) \(red[1]) \(red[2]) 
        \(red[3]) \(red[4]) \(red[5])
        \(red[6]) \(red[7]) \(red[8])
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
}
