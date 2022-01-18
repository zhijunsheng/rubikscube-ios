//
//  RubiksGame.swift
//  rubikscube
//
//  Created by Kenneth Wu on 2022-01-13.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct RubiksGame {
    let faceF: [CubeColor] = [.red, .yellow, .white, .orange, .orange, .blue, .yellow, .green, .white]
    let faceU: [CubeColor] = [.yellow, .white, .blue, .red, .red, .orange, .blue, .green, .white]
    let faceR: [CubeColor] = [.green, .blue, .red, .green, .white, .blue, .yellow, .red, .orange]
    
    
    func colorF(col: Int, row: Int) -> CubeColor {
        return faceF[col + 3 * row]
    }
    
    func colorU(col: Int, row: Int) -> CubeColor {
        return faceU[col + 3 * row]
    }
    
    func colorR(col: Int, row: Int) -> CubeColor {
        return faceR[col + 3 * row]
    }
}
