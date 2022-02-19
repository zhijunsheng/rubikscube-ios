//
//  CubeDelegate.swift
//  rubikscube
//
//  Created by Harry Shen on 2/12/22.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import Foundation
protocol CubeDelegate {
    func reset()
    func getPieceColorFrontFace(col: Int, row: Int) -> CubeColor
    func getPieceColorRightFace(col: Int, row: Int) -> CubeColor
    func getPieceColorUpFace(col: Int, row: Int) -> CubeColor
    mutating func topRowTurn(clockwise: Bool)
    func test()
}
