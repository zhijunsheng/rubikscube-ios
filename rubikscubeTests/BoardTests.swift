//
//  BoardTests.swift
//  rubikscubeTests
//
//  Created by Peter Shi on 2019-07-27.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import XCTest
@testable import rubikscube

class BoardTests: XCTestCase {
    
    func testDescription() {
        var board: Board = Board()
        board.white = ["G", "B", "O", "Y", "W", "R", "B", "G", "Y"]
        board.red = ["G", "B", "O", "Y", "R", "R", "B", "G", "Y"]
        board.blue = ["G", "B", "O", "Y", "B", "R", "B", "G", "Y"]
        board.green = ["G", "B", "O", "Y", "G", "R", "B", "G", "Y"]
        board.yellow = ["G", "B", "O", "Y", "Y", "R", "B", "G", "Y"]
        board.orange = ["G", "B", "O", "Y", "O", "R", "B", "G", "Y"]
        print(board)
    }
}
