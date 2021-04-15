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
    
    mutating func rotateFFC() {
        var a = ff[0]
        
        ff[0] = ff[6]
        ff[6] = ff[8]
        ff[8] = ff[2]
        ff[2] = a
        a = ff[1]
        ff[1] = ff[3]
        ff[3] = ff[7]
        ff[7] = ff[5]
        ff[5] = a
        
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
}
