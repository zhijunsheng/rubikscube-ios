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
    
    mutating func shuffle() {
        for _ in 0 ..< 10000 {
            let random0 = arc4random() % 10
            switch random0 {
            case 0:
                U()
            case 1:
                UUU()
            case 2:
                F()
            case 3:
                FFF()
            case 4:
                D()
            case 5:
                DDD()
            case 6:
                R()
            case 7:
                RRR()
            case 8:
                L()
            case 9:
                LLL()
            default:
                break
            }
        }
    }
    
    mutating func moveCubeUUU() {
        moveCubeU()
        moveCubeU()
        moveCubeU()
    }
    
    mutating func moveCubeU() {
        
        let saveU0 = faceU[0]
        let saveU1 = faceU[1]
        let saveU2 = faceU[2]
        let saveU3 = faceU[3]
        let saveU4 = faceU[4]
        let saveU5 = faceU[5]
        let saveU6 = faceU[6]
        let saveU7 = faceU[7]
        let saveU8 = faceU[8]
        
        for i in 0 ..< 9 {
            faceU[i] = faceF[i]
            faceF[i] = faceD[i]
        }
        
        faceD[0] = faceB[8]
        faceD[1] = faceB[7]
        faceD[2] = faceB[6]
        faceD[3] = faceB[5]
        faceD[4] = faceB[4]
        faceD[5] = faceB[3]
        faceD[6] = faceB[2]
        faceD[7] = faceB[1]
        faceD[8] = faceB[0]
        
        faceB[8] = saveU0
        faceB[7] = saveU1
        faceB[6] = saveU2
        faceB[5] = saveU3
        faceB[4] = saveU4
        faceB[3] = saveU5
        faceB[2] = saveU6
        faceB[1] = saveU7
        faceB[0] = saveU8
        
        faceR = rotateFace(face: faceR)
        
        for _ in 0 ..< 3 {
            faceL = rotateFace(face: faceL)
        }
    }
    
    mutating func LLL() {
        L()
        L()
        L()
    }
    
    mutating func L() {
        
        let saveF0 = faceF[0]
        let saveF3 = faceF[3]
        let saveF6 = faceF[6]
        
        faceF[0] = faceU[0]
        faceF[3] = faceU[3]
        faceF[6] = faceU[6]
        
        faceU[0] = faceB[8]
        faceU[3] = faceB[5]
        faceU[6] = faceB[2]
        
        faceB[8] = faceD[0]
        faceB[5] = faceD[3]
        faceB[2] = faceD[6]
        
        faceD[0] = saveF0
        faceD[3] = saveF3
        faceD[6] = saveF6
        
        faceL = rotateFace(face: faceL)
    }
    
    mutating func RRR() {
        R()
        R()
        R()
    }
    
    mutating func R() {
        
        let saveF2 = faceF[2]
        let saveF5 = faceF[5]
        let saveF8 = faceF[8]
        
        faceF[2] = faceD[2]
        faceF[5] = faceD[5]
        faceF[8] = faceD[8]
        
        faceD[2] = faceB[6]
        faceD[5] = faceB[3]
        faceD[8] = faceB[0]
        
        faceB[6] = faceU[2]
        faceB[3] = faceU[5]
        faceB[0] = faceU[8]
        
        faceU[2] = saveF2
        faceU[5] = saveF5
        faceU[8] = saveF8
        
        faceR = rotateFace(face: faceR)
    }
    
    mutating func DDD() {
        D()
        D()
        D()
    }
    
    mutating func D() {
        
        let saveF6 = faceF[6]
        let saveF7 = faceF[7]
        let saveF8 = faceF[8]
        
        faceF[6] = faceL[6]
        faceL[6] = faceB[6]
        faceB[6] = faceR[6]
        faceR[6] = saveF6
        
        faceF[7] = faceL[7]
        faceL[7] = faceB[7]
        faceB[7] = faceR[7]
        faceR[7] = saveF7
        
        faceF[8] = faceL[8]
        faceL[8] = faceB[8]
        faceB[8] = faceR[8]
        faceR[8] = saveF8

        faceD = rotateFace(face: faceD)
    }
    
    mutating func FFF() {
        F()
        F()
        F()
    }
    
    mutating func F() {
        
        let saveL2 = faceL[2]
        let saveL5 = faceL[5]
        let saveL8 = faceL[8]
        
        faceL[2] = faceD[0]
        faceL[5] = faceD[1]
        faceL[8] = faceD[2]
        
        faceD[2] = faceR[0]
        faceD[1] = faceR[3]
        faceD[0] = faceR[6]
        
        faceR[0] = faceU[6]
        faceR[3] = faceU[7]
        faceR[6] = faceU[8]
        
        faceU[8] = saveL2
        faceU[7] = saveL5
        faceU[6] = saveL8
        
        faceF = rotateFace(face: faceF)
        
    }
    
    
    mutating func UUU() {
        
        U()
        U()
        U()
    }
    
    mutating func U() {
        
        faceU = rotateFace(face: faceU)
        
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
        
        faceF.removeAll()
        faceU.removeAll()
        faceR.removeAll()
        faceL.removeAll()
        faceD.removeAll()
        faceB.removeAll()
        
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
    
    mutating func rotateFace(face: [CubeColor]) -> [CubeColor] {
        var newFace = face
        
        newFace[0] = face[6]
        newFace[6] = face[8]
        newFace[8] = face[2]
        newFace[2] = face[0]
        
        newFace[1] = face[3]
        newFace[3] = face[7]
        newFace[7] = face[5]
        newFace[5] = face[1]
        
        return newFace
    }
}
