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
            let tempTop1 = upFace[0]
            upFace[0] = upFace[6]
            upFace[6] = upFace[8]
            upFace[8] = upFace[2]
            upFace[2] = tempTop1
            let tempTop2 = upFace[1]
            upFace[1] = upFace[3]
            upFace[3] = upFace[7]
            upFace[7] = upFace[5]
            upFace[5] = tempTop2
            if clockwise {
                break
            }
            count += 1
        }
    }
}
