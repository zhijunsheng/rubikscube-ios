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
        
        print(board)
        
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
        
        // _____
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "G", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.back[6], "G") // donald's test case
        XCTAssertEqual(board.down[2], "R")
        board.turnX()
        XCTAssertEqual(board.down[2], "G")
        XCTAssertEqual(board.back[6], "R")
    }
    
    func testU() {
        var board: Board = Board()
        board.up = ["G", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.up[0], "G")
        XCTAssertEqual(board.up[2], "R")
        board.turnU()
        
        XCTAssertEqual(board.up[2], "G")
        XCTAssertEqual(board.up[0], "R")
        print(board)
        
        // front[0]
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["G", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.front[0], "G")
        XCTAssertEqual(board.left[0], "R")
        board.turnU()
        
        XCTAssertEqual(board.left[0], "G")
        XCTAssertEqual(board.front[0], "R")
        print(board)
        
        
        // back[2]
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "G", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.back[2], "G")
        XCTAssertEqual(board.right[2], "R")
        board.turnU()
        
        XCTAssertEqual(board.right[2], "G")
        XCTAssertEqual(board.back[2], "R")
        print(board)
    }
    
    func testF() {
        var board: Board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "G", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        
        XCTAssertEqual(board.left[5], "G")
        XCTAssertEqual(board.up[7], "R")
        board.turnF()
        XCTAssertEqual(board.left[5], "R")
        XCTAssertEqual(board.up[7], "G")
    }
    
    func testL() {
        var board: Board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "G", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.left[1], "G")
        XCTAssertEqual(board.left[5], "R")
        board.turnL()
        
        XCTAssertEqual(board.left[5], "G")
        XCTAssertEqual(board.left[1], "R")
        print(board)
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["G", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.front[0], "G")
        XCTAssertEqual(board.down[0], "R")
        board.turnL()
        
        XCTAssertEqual(board.down[0], "G")
        XCTAssertEqual(board.front[0], "R")
        print(board)
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "G", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.down[2], "G")
        board.turnL()
        XCTAssertEqual(board.down[2], "G")

        print(board)
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "G", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.down[6], "G")
        XCTAssertEqual(board.back[6], "R")
        board.turnL()
        XCTAssertEqual(board.back[6], "G")
        XCTAssertEqual(board.down[6], "R")
        
        print(board)
    }
    
    func testR() {
        var board: Board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "G", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.right[1], "G")
        XCTAssertEqual(board.right[5], "R")
        board.turnR()
        
        XCTAssertEqual(board.right[5], "G")
        XCTAssertEqual(board.right[1], "R")
        print(board)
        
        // front[0]
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "G", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.front[2], "G")
        XCTAssertEqual(board.up[2], "R")
        board.turnR()
        
        XCTAssertEqual(board.up[2], "G")
        XCTAssertEqual(board.front[2], "R")
        print(board)
        
        /*
         front[6]
         
         R R R
         R R R
         R R R
         
         R R R  R R R
         R R R  R R R
         G R R  R R R
         
  R R R  R R R
  R R R  R R R
  R R R  R R R
         
         R R R
         R R R
         R R R
         */
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["G", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.down[0], "G")
        board.turnR()
        XCTAssertEqual(board.down[0], "G")
        
        print(board)
        
        /*
         down[6]
         
         R R R
         R R R
         R R R
         
         R R R  R R R
         R R R  R R R
         R R R  R R R
         
  R R R  R R R
  R R R  R R R
  R R R  G R R
         
         R R R
         R R R
         R R R
         
         */
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "G"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.down[8], "G")
        XCTAssertEqual(board.front[8], "R")
        board.turnR()
        XCTAssertEqual(board.front[8], "G")
        XCTAssertEqual(board.down[8], "R")
        
        print(board)
    }
    
    
    func testD() {
        /*
         down[0]
         
         R R R
         R R R
         R R R
         
         R R R  R R R
         R R R  R R R
         R R R  R R R
         
  R R R  G R R
  R R R  R R R
  R R R  R R R
         
         R R R
         R R R
         R R R
         */
        var board: Board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["G", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)

        XCTAssertEqual(board.down[0], "G")
        XCTAssertEqual(board.down[2], "R")
        board.turnD()
        
        XCTAssertEqual(board.down[2], "G")
        XCTAssertEqual(board.down[0], "R")
        print(board)
        

        /*
        front[6]
         
        R R R
        R R R
        R R R
        
        R R R  R R R
        R R R  R R R
        G R R  R R R
        
 R R R  R R R
 R R R  R R R
 R R R  R R R
        
        R R R
        R R R
        R R R
        */
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "G", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.front[6], "G")
        XCTAssertEqual(board.right[6], "R")
        board.turnD()
        
        XCTAssertEqual(board.right[6], "G")
        XCTAssertEqual(board.front[6], "R")
        print(board)
        
        
        /*
         front[6]
         

         */
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "G", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.back[5], "G")
        board.turnD()
        XCTAssertEqual(board.back[5], "G")
        
        print(board)
        
        /*
         down[6]
         
         */
        
        board = Board()
        board.up = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.right = ["R", "R", "R", "R", "R", "R", "R", "R", "G"]
        board.left = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.down = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        board.back = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        print(board)
        
        XCTAssertEqual(board.right[8], "G") // donald's test case
        XCTAssertEqual(board.back[8], "R")
        board.turnD()
        XCTAssertEqual(board.back[8], "G")
        XCTAssertEqual(board.right[8], "R")
        
        print(board)
        
        
    }

}
