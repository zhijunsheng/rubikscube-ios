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
    var rf: [RCColor] = [.blue, .red, .red, .red, .red, .red, .red, .red, .red]
    var uf: [RCColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    var lf: [RCColor] = [.orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange]
    var df: [RCColor] = [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
    var bf: [RCColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    
    mutating func rotateFFC() {
        var a = ff[0]
        
        ff = rotateFace(face: ff)
        
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
    
    mutating func rotateRFC() {
        rf = rotateFace(face: rf)
        
        for i in [8, 5, 2] {
            let a = uf[i]
            uf[i] = ff[i]
            ff[i] = df[i]
            df[i] = bf[8 - i]
            bf[8 - i] = a
        }
    }
    
    mutating func rotateRFCC() {
        for _ in 0 ..< 3 {
            rotateRFC()
        }
    }
    
    func rotateFace(face: [RCColor]) -> [RCColor] {
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
}
