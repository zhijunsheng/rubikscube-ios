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
        let ff0 = ff[0]
        ff[0] = ff[6]
        ff[6] = ff[8]
        ff[8] = ff[2]
        ff[2] = ff0
        
        let ff1 = ff[1]
        ff[1] = ff[3]
        ff[3] = ff[7]
        ff[7] = ff[5]
        ff[5] = ff1
        
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

    mutating func rotateFFCC() {
        for _ in 0 ..< 3 {
            rotateFC()
        }
    }
    
    mutating func shuffleCube() {
        
    }
    
    mutating func rotateDFC() {
        
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
        
    }
    
    mutating func rotateDown() {
        for _ in 0 ..< 3 {
            rotateUp()
        }
    }
    
    
    
    mutating func rotateRight() {
        
    }
    
    mutating func rotateBFC() {
        
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
        
    }
    
    mutating func rotateLFC() {
        
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
        
        return face
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
