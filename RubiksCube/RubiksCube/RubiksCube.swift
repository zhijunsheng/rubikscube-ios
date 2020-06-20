//
//  RubiksCube.swift
//  RubiksCube
//
//  Created by Zhijun Sheng on 2020-06-08.
//  Copyright © 2020 Zhijun Sheng. All rights reserved.
//

import Foundation

struct RubiksCube {
    var topFace: [CubeColor] = []
    var bottomFace: [CubeColor] = []
    var frontFace: [CubeColor] = []
    var backFace: [CubeColor] = []
    var leftFace:[CubeColor] = []
    var rightFace:[CubeColor] = []
    
    mutating func reset() {
        topFace.removeAll()
        bottomFace.removeAll()
        frontFace.removeAll()
        backFace.removeAll()
        leftFace.removeAll()
        rightFace.removeAll()
        
        for _ in 0..<9 {
            topFace.append(.white)
            bottomFace.append(.yellow)
            frontFace.append(.orange)
            backFace.append(.red)
            leftFace.append(.blue)
            rightFace.append(.green)
        }
    }
    
    mutating func shuffle() {
        for _ in 0..<1000 {
            let rnd = arc4random() % 10
            
            switch rnd {
            case 0:
                rotateD()
            case 1:
                rotateF()
            case 2:
                rotateL()
            case 3:
                rotateR()
            case 4:
                rotateU()
            case 5:
                rotateDPrime()
            case 6:
                rotateFPrime()
            case 7:
                rotateLPrime()
            case 8:
                rotateRPrime()
            case 9:
                rotateUPrime()
            default:
                break
            }
        }
    }
    
    func cubeGestureWith(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) ->  CubeGesture? {
        if fromCol == 0 && fromRow == 0 && toCol == 2 && toRow == 0 ||
            fromCol == 0 && fromRow == 0 && toCol == 1 && toRow == 0 ||
            fromCol == 1 && fromRow == 0 && toCol == 2 && toRow == 0 {
            return .UPrime
        } else if fromCol == 2 && fromRow == 0 && toCol == 0 && toRow == 0 ||
                fromCol == 2 && fromRow == 0 && toCol == 1 && toRow == 0 ||
                fromCol == 1 && fromRow == 0 && toCol == 0 && toRow == 0 {
            return .U
        } else if fromCol == 2 && fromRow == 0 && toCol == 2 && toRow == 2 ||
                fromCol == 2 && fromRow == 0 && toCol == 2 && toRow == 1 ||
                fromCol == 2 && fromRow == 1 && toCol == 2 && toRow == 2 {
            return .RPrime
        } else if fromCol == 2 && fromRow == 2 && toCol == 2 && toRow == 0 ||
                fromCol == 2 && fromRow == 2 && toCol == 2 && toRow == 1 ||
                fromCol == 2 && fromRow == 1 && toCol == 2 && toRow == 0 {
            return .R
        } else if fromCol == 0 && fromRow == 2 && toCol == 0 && toRow == 0 ||
                fromCol == 0 && fromRow == 2 && toCol == 0 && toRow == 1 ||
                fromCol == 0 && fromRow == 1 && toCol == 0 && toRow == 0 {
            return .LPrime
        } else if fromCol == 0 && fromRow == 0 && toCol == 0 && toRow == 2 ||
                fromCol == 0 && fromRow == 0 && toCol == 0 && toRow == 1 ||
                fromCol == 0 && fromRow == 1 && toCol == 0 && toRow == 2 {
            return .L
        } else if fromCol == 2 && fromRow == 2 && toCol == 0 && toRow == 2 ||
            fromCol == 2 && fromRow == 2 && toCol == 1 && toRow == 2 ||
            fromCol == 1 && fromRow == 2 && toCol == 0 && toRow == 2 {
            return .DPrime
        } else if fromCol == 0 && fromRow == 2 && toCol == 2 && toRow == 2 ||
            fromCol == 0 && fromRow == 2 && toCol == 1 && toRow == 2 ||
            fromCol == 1 && fromRow == 2 && toCol == 2 && toRow == 2 {
            return .D
        } else if fromCol == 1 && fromRow == 0 && toCol == 0 && toRow == 1 ||
            fromCol == 0 && fromRow == 1 && toCol == 1 && toRow == 2 ||
            fromCol == 1 && fromRow == 2 && toCol == 2 && toRow == 1 ||
            fromCol == 2 && fromRow == 1 && toCol == 1 && toRow == 0 {
            return .FPrime
        } else if fromCol == 1 && fromRow == 0 && toCol == 2 && toRow == 1 ||
            fromCol == 2 && fromRow == 1 && toCol == 1 && toRow == 2 ||
            fromCol == 1 && fromRow == 2 && toCol == 0 && toRow == 1 ||
            fromCol == 0 && fromRow == 1 && toCol == 1 && toRow == 0 {
            return .F
            
        } else if fromCol == 0 && fromRow == 1 && toCol == 2 && toRow == 1 {
            return .L2R
        } else if fromCol == 2 && fromRow == 1 && toCol == 0 && toRow == 1 {
            return .R2L
        } else if fromCol == 1 && fromRow == 2 && toCol == 1 && toRow == 0 {
            return .D2U
        } else if fromCol == 1 && fromRow == 0 && toCol == 1 && toRow == 2 {
            return .U2D
        }
        
        return nil
    }
    
    mutating func moveFinger(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        print("M: from (\(fromCol), \(fromRow)) to (\(toCol), \(toRow))")
        
        let cubeGesture = cubeGestureWith(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow)
        
        switch cubeGesture {
        case .F: rotateF()
        case .B: break
        case .L: rotateL()
        case .D: rotateD()
        case .U: rotateU()
        case .R: rotateR()
        case .FPrime: rotateFPrime()
        case .BPrime: break
        case .LPrime: rotateLPrime()
        case .DPrime: rotateDPrime()
        case .UPrime: rotateUPrime()
        case .RPrime: rotateRPrime()
        case .L2R: rotateL2R()
        case .R2L: rotateR2L()
        case .U2D: rotateU2D()
        case .D2U: rotateD2U()
        case .none: break
        }
    }
    
    mutating func rotateFPrime() {
        frontFace = rotateFaceCCW(face: frontFace)
        
        let topFace6 = topFace[6]
        let topFace7 = topFace[7]
        let topFace8 = topFace[8]
        
        topFace[6] = rightFace[0]
        topFace[7] = rightFace[3]
        topFace[8] = rightFace[6]
        
        rightFace[0] = bottomFace[2]
        rightFace[3] = bottomFace[1]
        rightFace[6] = bottomFace[0]
        
        bottomFace[2] = leftFace[8]
        bottomFace[1] = leftFace[5]
        bottomFace[0] = leftFace[2]
        
        leftFace[8] = topFace6
        leftFace[5] = topFace7
        leftFace[2] = topFace8
    }
    
    mutating func rotateF() {
        rotateFPrime()
        rotateFPrime()
        rotateFPrime()
    }
    
    mutating func rotateDPrime() {
        bottomFace = rotateFaceCCW(face: bottomFace)
        
        for i in 6...8 {
            let frontFaceI = frontFace[i]
            frontFace[i] = rightFace[i]
            rightFace[i] = backFace[i]
            backFace[i] = leftFace[i]
            leftFace[i] = frontFaceI
        }
    }
    
    mutating func rotateD() {
        rotateDPrime()
        rotateDPrime()
        rotateDPrime()
    }
    
    mutating func rotateLPrime() {
        leftFace = rotateFaceCCW(face: leftFace)
        
        let topFace0 = topFace[0]
        let topFace3 = topFace[3]
        let topFace6 = topFace[6]
        
        topFace[0] = frontFace[0]
        topFace[3] = frontFace[3]
        topFace[6] = frontFace[6]
        
        frontFace[0] = bottomFace[0]
        frontFace[3] = bottomFace[3]
        frontFace[6] = bottomFace[6]
        
        bottomFace[0] = backFace[8]
        bottomFace[3] = backFace[5]
        bottomFace[6] = backFace[2]
        
        backFace[8] = topFace0
        backFace[5] = topFace3
        backFace[2] = topFace6
    }
    
    mutating func rotateL() {
        rotateLPrime()
        rotateLPrime()
        rotateLPrime()
    }
    
    mutating func rotateRPrime() {
        rightFace = rotateFaceCCW(face: rightFace)
        
        let frontFace2 = frontFace[2]
        let frontFace5 = frontFace[5]
        let frontFace8 = frontFace[8]
        
        frontFace[2] = topFace[2]
        frontFace[5] = topFace[5]
        frontFace[8] = topFace[8]
        
        topFace[2] = backFace[6]
        topFace[5] = backFace[3]
        topFace[8] = backFace[0]
        
        backFace[0] = bottomFace[8]
        backFace[3] = bottomFace[5]
        backFace[6] = bottomFace[2]
        
        bottomFace[2] = frontFace2
        bottomFace[5] = frontFace5
        bottomFace[8] = frontFace8
    }
    
    mutating func rotateR() {
        rotateRPrime()
        rotateRPrime()
        rotateRPrime()
    }
    
    mutating func rotateUPrime() {
        topFace = rotateFaceCCW(face: topFace)
        
        for i in 0..<3 {
            let rightFaceI = rightFace[i]
            rightFace[i] = frontFace[i]
            frontFace[i] = leftFace[i]
            leftFace[i] = backFace[i]
            backFace[i] = rightFaceI
        }
    }
    
    mutating func rotateU() {
        rotateUPrime()
        rotateUPrime()
        rotateUPrime()
    }
    
    private func rotateFaceCCW(face: [CubeColor]) -> [CubeColor] {
        var resultFace: [CubeColor] = face
        
        let topFace1 = resultFace[1]
        let topFace0 = resultFace[0]
        let topFace3 = resultFace[3]
        let topFace6 = resultFace[6]
        resultFace[0] = resultFace[2]
        resultFace[1] = resultFace[5]
        resultFace[2] = resultFace[8]
        resultFace[3] = topFace1
        resultFace[5] = resultFace[7]
        resultFace[6] = topFace0
        resultFace[7] = topFace3
        resultFace[8] = topFace6
        
        return resultFace
    }
    
    mutating func rotateD2U() {
           leftFace = rotateFaceCCW(face: leftFace)
           rightFace = rotateFaceCCW(face: rightFace)
           rightFace = rotateFaceCCW(face: rightFace)
           rightFace = rotateFaceCCW(face: rightFace)
           
           let originalFrontFace = frontFace
           frontFace = bottomFace
           bottomFace = backFace
           backFace = topFace
           topFace = originalFrontFace
       }
       
       mutating func rotateU2D() {
           rotateD2U()
           rotateD2U()
           rotateD2U()
       }
       
       mutating func rotateL2R() {
           topFace = rotateFaceCCW(face: topFace)
           
           bottomFace = rotateFaceCCW(face: bottomFace)
           bottomFace = rotateFaceCCW(face: bottomFace)
           bottomFace = rotateFaceCCW(face: bottomFace)
           
           let originalFrontFace = frontFace
           frontFace = leftFace
           leftFace = backFace
           backFace = rightFace
           rightFace = originalFrontFace
       }
       
       mutating func rotateR2L() {
           rotateL2R()
           rotateL2R()
           rotateL2R()
       }
}
