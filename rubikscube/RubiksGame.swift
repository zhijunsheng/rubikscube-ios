//
//  RubiksGame.swift
//  rubikscube
//
//  Created by Kenneth Wu on 2022-01-13.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct RubiksGame {
    var faceF: [CubeColor] = []
    var faceU: [CubeColor] = []
    var faceR: [CubeColor] = []
    var faceL: [CubeColor] = []
    var faceD: [CubeColor] = []
    var faceB: [CubeColor] = []
    
    mutating func UUU() {
        
        U()
        U()
        U()
    }
    
    mutating func U() {
        
        let saveU0 = faceU[0]
        let saveU1 = faceU[1]
        
        faceU[0] = faceU[6]
        faceU[6] = faceU[8]
        faceU[8] = faceU[2]
        faceU[2] = saveU0
        
        faceU[1] = faceU[3]
        faceU[3] = faceU[7]
        faceU[7] = faceU[5]
        faceU[5] = saveU1
        
        
        let saveF0 = faceF[0]
        let saveF1 = faceF[1]
        let saveF2 = faceF[2]
        
        faceF[0] = faceR[0]
        faceF[1] = faceR[1]
        faceF[2] = faceR[2]
        
        faceR[0] = faceB[0]
        faceR[1] = faceB[1]
        faceR[2] = faceB[2]
        
        faceB[0] = faceL[0]
        faceB[1] = faceL[1]
        faceB[2] = faceL[2]
        
        faceL[0] = saveF0
        faceL[1] = saveF1
        faceL[2] = saveF2
        
    }
    
    mutating func reset() {
        for _ in 0 ..< 9 {
            faceF.append(.red)
            faceU.append(.white)
            faceR.append(.blue)
            faceL.append(.green)
            faceD.append(.yellow)
            faceB.append(.orange)
        }
    }
    
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
