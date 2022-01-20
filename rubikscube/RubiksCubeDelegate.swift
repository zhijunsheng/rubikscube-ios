//
//  RubiksCubeDelegate.swift
//  rubikscube
//
//  Created by Kenneth Wu on 2022-01-13.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import Foundation

protocol RubiksCubeDelegate {
    func colorF(col: Int, row: Int) -> CubeColor
    func colorU(col: Int, row: Int) -> CubeColor
    func colorR(col: Int, row: Int) -> CubeColor
    
    func U()
    func UUU()
}
