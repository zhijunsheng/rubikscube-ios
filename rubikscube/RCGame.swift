//
//  RCGame.swift
//  rubikscube
//
//  Created by Felix Lo on 2021-04-08.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct RCGame {
    var ff: [RCColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var rf: [RCColor] = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
    var uf: [RCColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    var lf: [RCColor] = [.orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange]
    var df: [RCColor] = [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
    var bf: [RCColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    
    mutating func rotateFC() {
        ff = rotateFaceC(face: ff)
        
        let rf0 = rf[0]
        let rf3 = rf[3]
        let rf6 = rf[6]
        
        rf[0] = uf[6]
        rf[3] = uf[7]
        rf[6] = uf[8]
        
        uf[6] = lf[8]
        uf[7] = lf[5]
        uf[8] = lf[2]
        
        lf[8] = df[2]
        lf[5] = df[1]
        lf[2] = df[0]
        
        df[2] = rf0
        df[1] = rf3
        df[0] = rf6
    }
    
    mutating func rotateFCC() {
        for _ in 0 ..< 3 {
            rotateFC()
        }
    }
    
    mutating func rotateRC() {
        rf = rotateFaceC(face: rf)
        
        let uf2 = uf[2]
        let uf5 = uf[5]
        let uf8 = uf[8]
        uf[2] = ff[2]
        uf[5] = ff[5]
        uf[8] = ff[8]
        
        ff[2] = df[2]
        ff[5] = df[5]
        ff[8] = df[8]
        
        df[8] = bf[0]
        df[5] = bf[3]
        df[2] = bf[6]
        
        bf[0] = uf8
        bf[3] = uf5
        bf[6] = uf2
    }
    
    mutating func rotateRCC() {
        for _ in 0 ..< 3 {
            rotateRC()
        }
    }
    
    mutating func rotateUC() {
        uf = rotateFaceC(face: uf)
        
        let rf012 = [rf[0], rf[1], rf[2]]
        for i in 0 ..< 3 {
            rf[i] = bf[i]
            bf[i] = lf[i]
            lf[i] = ff[i]
            ff[i] = rf012[i]
        }
    }
    
    mutating func rotateUCC() {
        for _ in 0 ..< 3 {
            rotateUC()
        }
    }
    
    mutating func rotateLC() {
        lf = rotateFaceC(face: lf)
        
        let uf0 = uf[0]
        let uf3 = uf[3]
        let uf6 = uf[6]
        uf[0] = bf[8]
        uf[3] = bf[5]
        uf[6] = bf[2]
        
        bf[8] = df[0]
        bf[5] = df[3]
        bf[2] = df[6]
        
        df[0] = ff[0]
        df[3] = ff[3]
        df[6] = ff[6]
        
        ff[0] = uf0
        ff[3] = uf3
        ff[6] = uf6
    }
    
    mutating func rotateLCC() {
        for _ in 0 ..< 3 {
            rotateLC()
        }
    }
    
    mutating func rotateDC() {
        df = rotateFaceC(face: df)
        
        let ff678 = [ff[6], ff[7], ff[8]]
        
        for i in 0 ..< 3 {
            ff[i + 6] = lf[i + 6]
            lf[i + 6] = bf[i + 6]
            bf[i + 6] = rf[i + 6]
            rf[i + 6] = ff678[i]
        }
    }
    
    mutating func rotateDCC() {
        for _ in 0 ..< 3 {
            rotateDC()
        }
    }
    
    mutating func rotateBC() {
        bf = rotateFaceC(face: bf)
        
        let uf0 = uf[0]
        let uf1 = uf[1]
        let uf2 = uf[2]
        uf[0] = rf[2]
        uf[1] = rf[5]
        uf[2] = rf[8]
        
        rf[2] = df[8]
        rf[5] = df[7]
        rf[8] = df[6]
        
        df[8] = lf[6]
        df[7] = lf[3]
        df[6] = lf[0]
        
        lf[6] = uf0
        lf[3] = uf1
        lf[0] = uf2
    }
    
    mutating func rotateBCC() {
        for _ in 0 ..< 3 {
            rotateBC()
        }
    }
    
    mutating func shuffleCube() {
        for _ in 0 ..< 1000 {
            let n = arc4random() % 12
            switch n {
            case 0:
                rotateFC()
            case 1:
                rotateRC()
            case 2:
                rotateUC()
            case 3:
                rotateFCC()
            case 4:
                rotateRCC()
            case 5:
                rotateUCC()
            case 6:
                rotateLC()
            case 7:
                rotateLCC()
            case 8:
                rotateDC()
            case 9:
                rotateDCC()
            case 10:
                rotateBC()
            case 11:
                rotateBCC()
            default:
                break
            }
        }
    }
    
    mutating func reset() {
        ff = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rf = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
        uf = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
        lf = [.orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange]
        df = [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
        bf = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    }
    
    mutating func rotateUp() {
        
    }
    
    mutating func rotateDown() {
        for _ in 0 ..< 3 {
            rotateUp()
        }
    }
    
    mutating func rotateLeft() {
        for _ in 0 ..< 3 {
            rotateRight()
        }
    }
    
    mutating func rotateRight() {
        
    }
    
    func colourAt(index: Int, face: RCFace) -> RCColor {
        switch face {
        case .RF:
            return rf[index]
        case .FF:
            return ff[index]
        case .UF:
            return uf[index]
        case .DF:
            return df[index]
        case .LF:
            return lf[index]
        case .BF:
            return bf[index]
        }
    }
    
    func rotateFaceC(face: [RCColor]) -> [RCColor] {
        var newFace = face
        let newFace0 = newFace[0]
        newFace[0] = newFace[6]
        newFace[6] = newFace[8]
        newFace[8] = newFace[2]
        newFace[2] = newFace0
        
        let newFace1 = newFace[1]
        newFace[1] = newFace[3]
        newFace[3] = newFace[7]
        newFace[7] = newFace[5]
        newFace[5] = newFace1
        
        return newFace
    }
    
    func rotateFaceCC(face: [RCColor]) -> [RCColor] {
        var newFace = face
        
        for _ in 0 ..< 3 {
            newFace = rotateFaceC(face: newFace)
        }
        return newFace
    }
    
    static func generateGame(index: Int, face: RCFace, color: RCColor) -> RCGame {
        var rcGame = RCGame()
        
        rcGame.rf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.uf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.df = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.ff = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.lf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.bf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        
        switch face {
        case .FF:
            rcGame.ff[index] = color
        case .RF:
            rcGame.rf[index] = color
        case .UF:
            rcGame.uf[index] = color
        case .DF:
            rcGame.df[index] = color
        case .LF:
            rcGame.lf[index] = color
        case .BF:
            rcGame.bf[index] = color
        }
        
        return rcGame
    }
}
