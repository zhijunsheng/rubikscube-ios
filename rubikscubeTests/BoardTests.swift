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
        board.up = ["G", "B", "O", "Y", "W", "R", "B", "G", "Y"]
        board.front = ["G", "B", "O", "Y", "R", "R", "B", "G", "Y"]
        board.right = ["G", "B", "O", "Y", "B", "R", "B", "G", "Y"]
        board.left = ["G", "B", "O", "Y", "G", "R", "B", "G", "Y"]
        board.down = ["G", "B", "O", "Y", "Y", "R", "B", "G", "Y"]
        board.back = ["G", "B", "O", "Y", "O", "R", "B", "G", "Y"]
        print(board)
    }
    
    func testU() {
        var board: Board = Board()
        board.up = ["G", "B", "O", "Y", "W", "R", "B", "G", "Y"]
        board.front = ["G", "B", "O", "Y", "R", "R", "B", "G", "Y"]
        board.right = ["B", "Y", "B", "Y", "B", "R", "B", "G", "Y"]
        board.left = ["G", "B", "O", "Y", "G", "R", "B", "G", "Y"]
        board.down = ["G", "B", "O", "Y", "Y", "R", "B", "G", "Y"]
        board.back = ["G", "B", "O", "Y", "O", "R", "B", "G", "Y"]
        print(board)
        
        XCTAssertEqual(board.up[0], "G")
        XCTAssertEqual(board.front[0], "G")
        board.turnU()
        
        XCTAssertEqual(board.up[2], "G")
        XCTAssertEqual(board.front[2], "B")
        
    }
}
