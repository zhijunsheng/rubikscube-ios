//
//  RubikCubeModel.swift
//  rubikscube
//
//  Created by Grace Huang on 1/30/20.
//  Copyright © 2020 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct RubikCubeModel {
    var frontFace: [RubikCubeColor] = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
    var rightFace: [RubikCubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var topFace: [RubikCubeColor] = [.red, .green, .green, .green, .green, .green, .green, .green, .green]
    var backFace: [RubikCubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .white]
    var leftFace: [RubikCubeColor] = [.green, .white, .yellow, .red, .green, .green, .green, .green, .green]
    var bottomFace: [RubikCubeColor] = [.orange, .green, .green, .green, .green, .green, .green, .green, .green]
    
    mutating func leftPrime() {
        let saveTop0 = topFace[0]
        let saveLeft0 = leftFace[0]
        let saveLeft1 = leftFace[1]
        let saveTop3 = topFace[3]
        let saveTop6 = topFace[6]

        topFace[0] = frontFace[0]
        frontFace[0] = bottomFace[0]
        bottomFace[0] = backFace[8]
        backFace[8] = saveTop0
        topFace[3] = frontFace[3]
        frontFace[3] = bottomFace[3]
        bottomFace[3] = backFace[5]
        backFace[5] = saveTop3
        topFace[6] = frontFace[6]
        frontFace[6] = bottomFace[6]
        bottomFace[6] = backFace[2]
        backFace[2] = saveTop6
        
        
        leftFace[0] = leftFace[2]
        leftFace[2] = leftFace[8]
        leftFace[8] = leftFace[6]
        leftFace[6] = saveLeft0
        leftFace[1] = leftFace[5]
        leftFace[5] = leftFace[7]
        leftFace[7] = leftFace[3]
        leftFace[3] = saveLeft1
    }
    
    mutating func turnCounterCW() {
//        Unfinished with top and bottom
        let saveRightFace = rightFace
        rightFace = frontFace
        frontFace = leftFace
        leftFace = backFace
        backFace = saveRightFace
    }
}
