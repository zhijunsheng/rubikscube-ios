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
    var df: [RCColor] = [.orange, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
    var bf: [RCColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    
    mutating func rotateFFC() {
        var a = ff[0]
        
        ff = rotateFaceC(face: ff)
        
        a = uf[6]
        uf[6] = lf[8]
        lf[8] = df[2]
        df[2] = rf[0]
        rf[0] = a
        a = uf[7]
        uf[7] = lf[5]
        lf[5] = df[1] 
        df[1] = rf[3]
        rf[3] = a
        a = uf[8]
        uf[8] = lf[2]
        lf[2] = df[0]
        df[0] = rf[6]
        rf[6] = a
    }
    
    mutating func rotateFFCC() {
        for _ in 0 ..< 3 {
            rotateFFC()
        }
    }
    
    mutating func shuffleCube() {
        for _ in 0 ..< 10000 {
            let a = arc4random() % 12
            switch a {
            case 0:
                rotateFFC()
            case 1:
                rotateFFCC()
            case 2:
                rotateRFC()
            case 3:
                rotateRFCC()
            case 4:
                rotateUFC()
            case 5:
                rotateUFCC()
            case 6:
                rotateDFC()
            case 7:
                rotateDFCC()
            case 8:
                rotateLFC()
            case 9:
                rotateLFCC()
            case 10:
                rotateBFC()
            case 11:
                rotateBFCC()
            default:
                break
            }
        }
    }
    
    mutating func rotateDFC() {
        df = rotateFaceC(face: df)
        var a = rf[6]
        rf[6] = ff[6]
        ff[6] = lf[6]
        lf[6] = bf[6]
        bf[6] = a
        a = rf[7]
        rf[7] = ff[7]
        ff[7] = lf[7]
        lf[7] = bf[7]
        bf[7] = a
        a = rf[8]
        rf[8] = ff[8]
        ff[8] = lf[8]
        lf[8] = bf[8]
        bf[8] = a
    }
    
    mutating func rotateDFCC() {
        for _ in 0 ..< 3 {
            rotateDFC()
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
        lf = rotateFaceCC(face: lf)
        rf = rotateFaceC(face: rf)
        
        let oldFF = ff

        ff = df
        
        for i in 0 ..< 9 {
            df[i] = bf[8 - i]
        }


        for i in 0 ..< 9 {
            bf[i] = uf[8 - i]
        }
        
        uf = oldFF
    }
    
    mutating func rotateDown() {
        for _ in 0 ..< 3 {
            rotateUp()
        }
    }
    
    
    
    mutating func rotateRight() {
        uf = rotateFaceCC(face: uf)
        df = rotateFaceC(face: df)
        
        let oldFF = ff

        ff = lf
        
        for i in 0 ..< 9 {
            lf[i] = bf[8 - i]
        }


        for i in 0 ..< 9 {
            bf[i] = rf[8 - i]
        }
        
        rf = oldFF
    }
    
    mutating func rotateBFC() {
        rotateRight()
        rotateRight()
        rotateFFC()
        rotateLeft()
        rotateLeft()
    }
    
    mutating func rotateBFCC() {
        for _ in 0 ..< 3 {
            rotateBFC()
        }
    }
    
    mutating func rotateLeft() {
        for _ in 0 ..< 3 {
            rotateRight()
        }
    }
    
    mutating func rotateRFC() {
        rf = rotateFaceC(face: rf)
        
        for i in [8, 5, 2] {
            let a = uf[i]
            uf[i] = ff[i]
            ff[i] = df[i]
            df[i] = bf[8 - i]
            bf[8 - i] = a
        }
    }
    
    mutating func rotateLFC() {
        lf = rotateFaceC(face: lf)
        var a = ff[0]
        ff[0] = uf[0]
        uf[0] = bf[8]
        bf[8] = df[0]
        df[0] = a
        a = ff[3]
        ff[3] = uf[3]
        uf[3] = bf[5]
        bf[5] = df[3]
        df[3] = a
        a = ff[6]
        ff[6] = uf[6]
        uf[6] = bf[2]
        bf[2] = df[6]
        df[6] = a
    }
    
    mutating func rotateLFCC() {
        for _ in 0 ..< 3 {
            rotateLFC()
        }
    }
    
    mutating func rotateRFCC() {
        for _ in 0 ..< 3 {
            rotateRFC()
        }
    }
    
    
    mutating func rotateUFC() {
        uf = rotateFaceC(face: uf)
        
        var a = ff[0]
        
        for i in 0 ..< 3 {
            a = ff[i]
            ff[i] = rf[i]
            rf[i] = bf[i]
            bf[i] = lf[i]
            lf[i] = a
        }
    }
    
    mutating func rotateUFCC() {
        for _ in 0 ..< 3 {
            rotateUFC()
        }
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
    
    func rotateFaceC(face: [RCColor]) -> [RCColor] { // rotate [faceName]
        var newFace = face
        var a = newFace[0]
        
        newFace[0] = newFace[6]
        newFace[6] = newFace[8]
        newFace[8] = newFace[2]
        newFace[2] = a
        a = newFace[1]
        newFace[1] = newFace[3]
        newFace[3] = newFace[7]
        newFace[7] = newFace[5]
        newFace[5] = a
        
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
