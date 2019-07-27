//
//  Board.swift
//  rubikscube
//
//  Created by Peter Shi on 2019-07-27.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {

    /*
     
           W W W
         W W W   B
       W W W   B B
             B B B
     R R R
     R R R  B B
     R R R  B
     
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
        
        return
"""
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
"""
    }
}
