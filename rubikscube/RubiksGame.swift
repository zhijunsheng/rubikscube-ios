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
    
    mutating func cycleCube3() {
        RRR()
        DDD()
        R()
        D()
    }
    
    mutating func cycleCorner3() {
        LLL()
        U()
        R()
        UUU()
        L()
        U()
        RRR()
    }
    
    mutating func solveLayerCross() {
        R()
        U()
        RRR()
        U()
        R()
        U()
        U()
        RRR()
    }
    
    mutating func solveMiddleLayer() {
        RRR()
        D()
        R()
        D()
        F()
        DDD()
        FFF()
    }
    
    mutating func solveUpCross() {
        F()
        U()
        R()
        UUU()
        RRR()
        FFF()
    }
    
    mutating func ML() {
        MR()
        MR()
        MR()
    }
    
    mutating func MR() {
        U()
        DDD()
        moveCubeR()
    }
    
    mutating func MU() {
        L()
        RRR()
        moveCubeU()
    }
    
    mutating func MD() {
        MU()
        MU()
        MU()
    }
    
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
    
    mutating func moveCubeL() {
        moveCubeR()
        moveCubeR()
        moveCubeR()
    }
    
    mutating func moveCubeR() {
        for i in 0 ..< 9 {
            let save = faceR[i]
            faceR[i] = faceF[i]
            faceF[i] = faceL[i]
            faceL[i] = faceB[i]
            faceB[i] = save
        }
        
        for _ in 0 ..< 3 {
            faceU = rotateFace(face: faceU)
        }
        
        faceD = rotateFace(face: faceD)
    }
    
    mutating func moveCubeD() {
        moveCubeU()
        moveCubeU()
        moveCubeU()
    }
    
    mutating func moveCubeU() {
        for i in 0 ..< 9 {
            let save = faceU[i]
            faceU[i] = faceF[i]
            faceF[i] = faceD[i]
            faceD[i] = faceB[8 - i]
            faceB[8 - i] = save
        }
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
        for i in [0, 3, 6]  {
            let save = faceF[i]
            faceF[i] = faceU[i]
            faceU[i] = faceB[8-i]
            faceB[8-i] = faceD[i]
            faceD[i] = save
        }
        faceL = rotateFace(face: faceL)
    }
    
    mutating func RRR() {
        R()
        R()
        R()
    }
    
    mutating func R() {
        for i in [2, 5, 8]  {
            let save = faceF[i]
            faceF[i] = faceD[i]
            faceD[i] = faceB[8-i]
            faceB[8-i] = faceU[i]
            faceU[i] = save
        }
        faceR = rotateFace(face: faceR)
    }
    
    mutating func DDD() {
        D()
        D()
        D()
    }
    
    mutating func D() {
        for i in 0 ..< 3 {
            let save = faceF[6 + i]
            faceF[6 + i] = faceL[6 + i]
            faceL[6 + i] = faceB[6 + i]
            faceB[6 + i] = faceR[6 + i]
            faceR[6 + i] = save
        }
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
        
        for i in 0 ..< 3 {
            faceL[2 + 3 * i] = faceD[i]
        }
        for i in 0 ..< 3 {
            faceD[2 - i] = faceR[3 * i]
        }
        for i in 0 ..< 3 {
            faceR[3 * i] = faceU[i + 6]
        }
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
        for i in 0 ..< 3 {
            let save = faceF[i]
            faceF[i] = faceR[i]
            faceR[i] = faceB[i]
            faceB[i] = faceL[i]
            faceL[i] = save
        }
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
