//
//  GameManager.swift
//  rubikscube
//
//  Created by Harry Shen on 2/12/22.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct GameManager {
    private var upFace: [CubeColor] = []
    private var frontFace: [CubeColor] = []
    private var backFace: [CubeColor] = []
    private var leftFace: [CubeColor] = []
    private var rightFace: [CubeColor] = []
    private var downFace: [CubeColor] = []
    
    mutating func reset() {
        upFace.removeAll()
        downFace.removeAll()
        frontFace.removeAll()
        backFace.removeAll()
        rightFace.removeAll()
        leftFace.removeAll()
        for _ in 0..<9 {
            upFace.append(.white)
            downFace.append(.yellow)
            frontFace.append(.green)
            backFace.append(.blue)
            rightFace.append(.red)
            leftFace.append(.orange)
        }
    }
    func getPieceColorFrontFace(col: Int, row: Int) -> CubeColor {
        return frontFace[col + 3 * row]
    }
    func getPieceColorRightFace(col: Int, row: Int) -> CubeColor {
        return rightFace[col + 3 * row]
    }
    func getPieceColorUpFace(col: Int, row: Int) -> CubeColor {
        return upFace[col + 3 * row]
    }
    mutating func test(){
        upFace[0] = .white
        upFace[1] = .white
        upFace[2] = .blue
        upFace[3] = .blue
        upFace[4] = .white
        upFace[5] = .green
        upFace[6] = .green
        upFace[7] = .red
        upFace[8] = .red
    }
    mutating func topRowTurn(clockwise: Bool){
        var count: Int = 0
        while(count<3){
            for i in 0..<3 {
                let temp = rightFace[i]
                rightFace[i] = backFace[i]
                backFace[i] = leftFace[i]
                leftFace[i] = frontFace[i]
                frontFace[i] = temp
            }
            upFace = rotateFace(face: upFace)
            if clockwise {
                break
            }
            count += 1
        }
    }
    mutating func middleRowTurn(clockwise: Bool){
        var count: Int = 0
        while(count<3){
            for i in 0..<3 {
                let temp = rightFace[3 + i]
                rightFace[3 + i] = backFace[3 + i]
                backFace[3 + i] = leftFace[3 + i]
                leftFace[3 + i] = frontFace[3 + i]
                frontFace[3 + i] = temp
            }
            if clockwise {
                break
            }
            count += 1
        }
    }
    mutating func bottomRowTurn(clockwise: Bool){
        var count: Int = 0
        while(count<3){
            for i in 0..<3 {
                let temp = rightFace[6 + i]
                rightFace[6 + i] = backFace[6 + i]
                backFace[6 + i] = leftFace[6 + i]
                leftFace[6 + i] = frontFace[6 + i]
                frontFace[6 + i] = temp
            }
            downFace = rotateFace(face: downFace)
            downFace = rotateFace(face: downFace)
            downFace = rotateFace(face: downFace)
            if clockwise {
                break
            }
            count += 1
        }
    }
    func rotateFace(face: [CubeColor]) -> [CubeColor] {
        var temp = face
        let tempTop1 = temp[0]
        temp[0] = temp[6]
        temp[6] = temp[8]
        temp[8] = temp[2]
        temp[2] = tempTop1
        let tempTop2 = temp[1]
        temp[1] = temp[3]
        temp[3] = temp[7]
        temp[7] = temp[5]
        temp[5] = tempTop2
        return temp
    }
    // F, F', U, U', R, R', ...
    mutating func rightFaceLeftColumnTurn(clockwise: Bool){ // F, F'
        var count: Int = 0
        while(count<3){
            for i in 0..<3 {
                let temp = upFace[6+i]
                upFace[6+i] = rightFace[3*i]
                rightFace[3*i] = downFace[3*i]
                downFace[3*i] = leftFace[8-3*i]
                leftFace[8-3*i] = temp
            }
            frontFace = rotateFace(face: frontFace)
            frontFace = rotateFace(face: frontFace)
            frontFace = rotateFace(face: frontFace)
            if clockwise {
                break
            }
            count += 1
        }
    }
    mutating func rightFaceMidColumnTurn(clockwise: Bool){
        var count: Int = 0
        while(count<3){
            for i in 0..<3 {
                let temp = upFace[3+i]
                upFace[3+i] = rightFace[3*i+1]
                rightFace[3*i+1] = downFace[3*i+1]
                downFace[3*i+1] = leftFace[7-3*i]
                leftFace[7-3*i] = temp
            }
            if clockwise {
                break
            }
            count += 1
        }
    }
    mutating func rightFaceRightColumnTurn(clockwise: Bool){
        var count: Int = 0
        while(count<3){
            for i in 0..<3 {
                let temp = upFace[i]
                upFace[i] = rightFace[3*i+2]
                rightFace[3*i+2] = downFace[3*i+2]
                downFace[3*i+2] = leftFace[6-3*i]
                leftFace[6-3*i] = temp
            }
            backFace=rotateFace(face: backFace)
            if clockwise {
                break
            }
            
            count += 1
        }
    }
    mutating func shuffle(){
        for j in 0..<1000{
            let i = arc4random()%6
            if i%6 == 0{
                topRowTurn(clockwise: true)
            }
             
            if i%6 == 1{
                middleRowTurn(clockwise: true)
            }
            if i%6 == 2{
                bottomRowTurn(clockwise: true)
            }
            if i%6 == 3{
                rightFaceLeftColumnTurn(clockwise: true)
            }
            if i%6 == 4{
                rightFaceMidColumnTurn(clockwise: true)
            }
            if i%6 == 5{
                rightFaceRightColumnTurn(clockwise: true)
            }
            
        }
    }
    
}
