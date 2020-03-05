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
        
        leftFace = rotatePrime(face: leftFace)
    }
    
    mutating func leftTurn() {
        leftPrime()
        leftPrime()
        leftPrime()
    }
    
    mutating func turnCW() {
        turnCounterCW()
        turnCounterCW()
        turnCounterCW()
    }
    
    mutating func turnDown() {
        turnUp()
        turnUp()
        turnUp()
    }
    
    mutating func turnCounterCW() {
        let saveRightFace = rightFace
        rightFace = frontFace
        frontFace = leftFace
        leftFace = backFace
        backFace = saveRightFace
        
        topFace = rotatePrime(face: topFace)
        bottomFace = rotatePrime(face: bottomFace)
        bottomFace = rotatePrime(face: bottomFace)
        bottomFace = rotatePrime(face: bottomFace)
    }
    mutating func turnUp() {
        let saveFrontFace = frontFace
        frontFace = bottomFace
        bottomFace = backFace
        backFace = topFace
        topFace = saveFrontFace
        
        rightFace = rotatePrime(face: rightFace)
        rightFace = rotatePrime(face: rightFace)
        rightFace = rotatePrime(face: rightFace)
        leftFace = rotatePrime(face: leftFace)
    }
    
    mutating func rotatePrime(face: [RubikCubeColor]) -> [RubikCubeColor]{
        var rotatingFace: [RubikCubeColor] = face
        let saveFace0 = face[0]
        let saveFace1 = face[1]
        rotatingFace[0] = rotatingFace[2]
        rotatingFace[2] = rotatingFace[8]
        rotatingFace[8] = rotatingFace[6]
        rotatingFace[6] = saveFace0
        rotatingFace[1] = rotatingFace[5]
        rotatingFace[5] = rotatingFace[7]
        rotatingFace[7] = rotatingFace[3]
        rotatingFace[3] = saveFace1
        return rotatingFace
    }
}
