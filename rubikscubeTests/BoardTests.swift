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
    
    func testX() {
        var board: Board = Board()
        
        //
        
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["G", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.front[0], "G")
        XCTAssertEqual(board.up[0], "R")
        board.turnX()
        XCTAssertEqual(board.front[0], "R")
        XCTAssertEqual(board.up[0], "G")
        
        // _____
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "G"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.right[8], "G")
        XCTAssertEqual(board.right[6], "R")
        board.turnX()
        XCTAssertEqual(board.right[8], "R")
        XCTAssertEqual(board.right[6], "G")
        
        
        // _____
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["G", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.left[0], "G")
        XCTAssertEqual(board.left[6], "R")
        board.turnX()
        XCTAssertEqual(board.left[6], "G")
        XCTAssertEqual(board.left[0], "R")
        
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
