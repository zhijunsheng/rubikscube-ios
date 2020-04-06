//
//  RubikCubeModel.swift
//  rubikscube
//
//  Created by Grace Huang on 1/30/20.
//  Copyright © 2020 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct RubikCubeModel { // 630
    var frontFace: [RubikCubeColor] = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
    var rightFace: [RubikCubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var topFace: [RubikCubeColor] = [.red, .green, .green, .green, .green, .green, .green, .green, .green]
    var backFace: [RubikCubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .white]
    var leftFace: [RubikCubeColor] = [.green, .white, .yellow, .red, .green, .green, .green, .green, .green]
    var downFace: [RubikCubeColor] = [.orange, .green, .green, .green, .green, .green, .green, .green, .green]
    
    
    mutating func leftPrime() {
        let saveTop0 = topFace[0]
        let saveTop3 = topFace[3]
        let saveTop6 = topFace[6]

        topFace[0] = frontFace[0]
        frontFace[0] = downFace[0]
        downFace[0] = backFace[8]
        backFace[8] = saveTop0
        topFace[3] = frontFace[3]
        frontFace[3] = downFace[3]
        downFace[3] = backFace[5]
        backFace[5] = saveTop3
        topFace[6] = frontFace[6]
        frontFace[6] = downFace[6]
        downFace[6] = backFace[2]
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
        downFace = rotatePrime(face: downFace)
        downFace = rotatePrime(face: downFace)
        downFace = rotatePrime(face: downFace)
    }
    mutating func turnUp() {
        let saveFrontFace = frontFace
        frontFace = downFace

        for i in 0...8 {
            downFace[i] = backFace[8 - i]
            backFace[8 - i] = topFace[i]
        }

        topFace = saveFrontFace
        rightFace = rotatePrime(face: rightFace)
        rightFace = rotatePrime(face: rightFace)
        rightFace = rotatePrime(face: rightFace)
        leftFace = rotatePrime(face: leftFace)
    }
    
    mutating func rightPrime() {
        let savefront2 = frontFace[2]
        let savefront5 = frontFace[5]
        let savefront8 = frontFace[8]

        frontFace[2] = topFace[2]
        topFace[2] = backFace[6]
        backFace[6] = downFace[2]
        downFace[2] = savefront2
        frontFace[5] = topFace[5]
        topFace[5] = backFace[3]
        backFace[3] = downFace[5]
        downFace[5] = savefront5
        frontFace[8] = topFace[8]
        topFace[8] = backFace[0]
        backFace[0] = downFace[8]
        downFace[8] = savefront8
        
        rightFace = rotatePrime(face: rightFace)
    }
    
    mutating func rightTurn() {
        rightPrime()
        rightPrime()
        rightPrime()
    }
    
    mutating func facePrime() {
        let savetop6 = topFace[6]
        let savetop7 = topFace[7]
        let savetop8 = topFace[8]

        topFace[6] = rightFace[0]
        rightFace[0] = downFace[2]
        downFace[2] = leftFace[8]
        leftFace[8] = savetop6
        
        topFace[7] = rightFace[3]
        rightFace[3] = downFace[1]
        downFace[1] = leftFace[5]
        leftFace[5] = savetop7
        
        topFace[8] = rightFace[6]
        rightFace[6] = downFace[0]
        downFace[0] = leftFace[2]
        leftFace[2] = savetop8

        
        frontFace = rotatePrime(face: frontFace)
    }
    
    mutating func resetCube() {
        for i in 0..<9 {
            frontFace[i] = .white
            rightFace[i] = .red
            topFace[i] = .blue
            leftFace[i] = .orange
            downFace[i] = .green
            backFace[i] = .yellow
        }
    }
    
    mutating func downTurn() {
        let saveFront6 = frontFace[6]
        let saveFront7 = frontFace[7]
        let saveFront8 = frontFace[8]

        downFace = rotatePrime(face: downFace)
        downFace = rotatePrime(face: downFace)
        downFace = rotatePrime(face: downFace)

        frontFace[6] = leftFace[6]
        leftFace[6] = backFace[6]
        backFace[6] = rightFace[6]
        rightFace[6] = saveFront6
        
        frontFace[7] = leftFace[7]
        leftFace[7] = backFace[7]
        backFace[7] = rightFace[7]
        rightFace[7] = saveFront7
        
        frontFace[8] = leftFace[8]
        leftFace[8] = backFace[8]
        backFace[8] = rightFace[8]
        rightFace[8] = saveFront8
    }
    
    mutating func topTurn() {
        topFace = rotatePrime(face: topFace)
        topFace = rotatePrime(face: topFace)
        topFace = rotatePrime(face: topFace)
        let saveFront0 = frontFace[0]
        let saveFront1 = frontFace[1]
        let saveFront2 = frontFace[2]

        frontFace[0] = rightFace[0]
        rightFace[0] = backFace[0]
        backFace[0] = leftFace[0]
        leftFace[0] = saveFront0
        
        frontFace[1] = rightFace[1]
        rightFace[1] = backFace[1]
        backFace[1] = leftFace[1]
        leftFace[1] = saveFront1
        
        frontFace[2] = rightFace[2]
        rightFace[2] = backFace[2]
        backFace[2] = leftFace[2]
        leftFace[2] = saveFront2
        
    }
    
    mutating func shuffleCube() {
        for _ in 0..<1000 {
            let random = arc4random() % 10
            
            if random == 0 {
                rightTurn()
            } else if random == 1 {
                rightPrime()
            } else if random == 2 {
                leftTurn()
            } else if random == 3 {
                leftPrime()
            } else if random == 4 {
                downTurn()
            } else if random == 5 {
                downTurn()
                downTurn()
                downTurn()
            } else if random == 6 {
                topTurn()
            } else if random == 7 {
                topTurn()
                topTurn()
                topTurn()
            } else if random == 8 {
                facePrime()
            } else if random == 9 {
                facePrime()
                facePrime()
                facePrime()
            }
        }
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
