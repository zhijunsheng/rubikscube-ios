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
    var topFace: [RubikCubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var backFace: [RubikCubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var leftFace: [RubikCubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var bottomFace: [RubikCubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    
    mutating func leftPrime() {
        for i in 0..<3 {
            frontFace[i * 3] = bottomFace[i * 3]
            topFace[i * 3] = frontFace[i * 3]
            backFace[i * 3] = topFace[i * 3]
            bottomFace[i * 3] = backFace[i * 3]
        }
        leftFace[0] = leftFace[6]
        leftFace[1] = leftFace[3]
        leftFace[2] = leftFace[0]
        leftFace[3] = leftFace[7]
        leftFace[5] = leftFace[1]
        leftFace[6] = leftFace[8]
        leftFace[7] = leftFace[5]
        leftFace[8] = leftFace[2]
    }
}
