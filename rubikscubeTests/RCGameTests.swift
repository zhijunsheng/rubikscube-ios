//
//  RCGameTests.swift
//  rubikscubeTests
//
//  Created by Felix Lo on 2021-04-17.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import XCTest
@testable import rubikscube

class RCGameTests: XCTestCase {
    
    func testRotateBFC() {
        // Back face
        
        var rcGame = generateGame(index: 0, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.bf[2], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[2], .red)
        XCTAssertEqual(rcGame.bf[0], .green)
        
        rcGame = generateGame(index: 1, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[1], .red)
        XCTAssertEqual(rcGame.bf[5], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[5], .red)
        XCTAssertEqual(rcGame.bf[1], .green)
        
        rcGame = generateGame(index: 2, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[2], .red)
        XCTAssertEqual(rcGame.bf[8], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[8], .red)
        XCTAssertEqual(rcGame.bf[2], .green)
        
        rcGame = generateGame(index: 3, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[3], .red)
        XCTAssertEqual(rcGame.bf[1], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[1], .red)
        XCTAssertEqual(rcGame.bf[3], .green)
        
        rcGame = generateGame(index: 4, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[4], .red)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[4], .red)
        
        rcGame = generateGame(index: 5, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[5], .red)
        XCTAssertEqual(rcGame.bf[7], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[7], .red)
        XCTAssertEqual(rcGame.bf[5], .green)
        
        rcGame = generateGame(index: 6, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.bf[0], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.bf[6], .green)
        
        rcGame = generateGame(index: 7, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[7], .red)
        XCTAssertEqual(rcGame.bf[3], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[3], .red)
        XCTAssertEqual(rcGame.bf[7], .green)
        
        rcGame = generateGame(index: 8, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[8], .red)
        XCTAssertEqual(rcGame.bf[6], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.bf[8], .green)
        
        // Back sides
        
        rcGame = generateGame(index: 2, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[2], .red)
        XCTAssertEqual(rcGame.lf[0], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.lf[0], .red)
        XCTAssertEqual(rcGame.uf[2], .green)
        
        rcGame = generateGame(index: 1, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[1], .red)
        XCTAssertEqual(rcGame.lf[3], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.lf[3], .red)
        XCTAssertEqual(rcGame.uf[1], .green)
        
        rcGame = generateGame(index: 0, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[0], .red)
        XCTAssertEqual(rcGame.lf[6], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.lf[6], .red)
        XCTAssertEqual(rcGame.uf[0], .green)
        
        rcGame = generateGame(index: 0, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[0], .red)
        XCTAssertEqual(rcGame.df[6], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.df[6], .red)
        XCTAssertEqual(rcGame.lf[0], .green)
        
        rcGame = generateGame(index: 3, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[3], .red)
        XCTAssertEqual(rcGame.df[7], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.df[7], .red)
        XCTAssertEqual(rcGame.lf[3], .green)
        
        rcGame = generateGame(index: 6, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[6], .red)
        XCTAssertEqual(rcGame.df[8], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.df[8], .red)
        XCTAssertEqual(rcGame.lf[6], .green)
        
        rcGame = generateGame(index: 6, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[6], .red)
        XCTAssertEqual(rcGame.rf[8], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.rf[8], .red)
        XCTAssertEqual(rcGame.df[6], .green)
        
        rcGame = generateGame(index: 7, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[7], .red)
        XCTAssertEqual(rcGame.rf[5], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.rf[5], .red)
        XCTAssertEqual(rcGame.df[7], .green)
        
        rcGame = generateGame(index: 8, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[8], .red)
        XCTAssertEqual(rcGame.rf[2], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.rf[2], .red)
        XCTAssertEqual(rcGame.df[8], .green)
        
        rcGame = generateGame(index: 8, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[8], .red)
        XCTAssertEqual(rcGame.uf[2], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.uf[2], .red)
        XCTAssertEqual(rcGame.rf[6], .green)
        
        rcGame = generateGame(index: 5, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[5], .red)
        XCTAssertEqual(rcGame.uf[1], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.uf[1], .red)
        XCTAssertEqual(rcGame.rf[5], .green)
    
        rcGame = generateGame(index: 2, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[2], .red)
        XCTAssertEqual(rcGame.uf[0], .green)
        rcGame.rotateBFC()
        XCTAssertEqual(rcGame.uf[0], .red)
        XCTAssertEqual(rcGame.rf[2], .green)
    }
    
    func testRotateFFCCc0() {
        var rcGame = RCGame()
        rcGame.ff = [.white, .green, .green, .green, .green, .green, .green, .green, .green]
        XCTAssertEqual(.white, rcGame.ff[0])
        XCTAssertEqual(.green, rcGame.ff[6])
        rcGame.rotateFFCC()
        XCTAssertEqual(.white, rcGame.ff[6])
        XCTAssertEqual(.green, rcGame.ff[0])
    }
    
    func testRotateFFCCc1() {
        var rcGame = RCGame()
        rcGame.ff = [.green, .white, .green, .green, .green, .green, .green, .green, .green]
        XCTAssertEqual(.white, rcGame.ff[1])
        XCTAssertEqual(.green, rcGame.ff[3])
        rcGame.rotateFFCC()
        XCTAssertEqual(.white, rcGame.ff[3])
        XCTAssertEqual(.green, rcGame.ff[1])
    }
    
    func testRotateFFCCSide() {
        var rcGame = RCGame()
        rcGame.rf = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.df = [.green, .green, .red, .green, .green, .green, .green, .green, .green]
        XCTAssertEqual(.blue, rcGame.rf[0])
        XCTAssertEqual(.red, rcGame.df[2])
        rcGame.rotateFFCC()
        XCTAssertEqual(.blue, rcGame.uf[6])
        XCTAssertEqual(.red, rcGame.rf[0])
    }
    
    func testRotateFFCCSideBug() {
        var rcGame = RCGame()
        rcGame.rf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.uf = [.green, .green, .green, .green, .green, .green, .red, .green, .green]
        rcGame.df = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.ff = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.lf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.bf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        
        XCTAssertEqual(.red, rcGame.uf[6])
        rcGame.rotateFFCC()
        rcGame.rotateFFCC()
        rcGame.rotateFFCC()
        
        XCTAssertEqual(.red, rcGame.rf[0])
    }
    
    func testRotateUp() {
        var rcGame = RCGame()
        rcGame.rf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.uf = [.green, .green, .green, .green, .green, .green, .red, .green, .green]
        rcGame.df = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.ff = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.lf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.bf = [.red, .green, .green, .green, .green, .green, .green, .green, .green]
        XCTAssertEqual(.red, rcGame.bf[0])
        rcGame.rotateUp()
        rcGame.rotateUp()
        XCTAssertEqual(.red, rcGame.ff[8])
        
    }
    
    func testRotateRFC() {
        var rcGame = RCGame()
        rcGame.rf = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.df = [.green, .green, .red, .green, .green, .green, .green, .green, .green]
        rcGame.rotateRFC()
        XCTAssertEqual(.blue, rcGame.rf[2])
    }
    
    func testRotateRFCC() {
        var rcGame = RCGame()
        rcGame.rf = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.df = [.green, .green, .red, .green, .green, .green, .green, .green, .green]
        rcGame.rotateRFCC()
        XCTAssertEqual(.blue, rcGame.rf[6])
    }
    
    func testRotateUFC() {
        var rcGame = RCGame()
        rcGame.rf = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.ff = [.green, .green, .red, .green, .green, .green, .green, .green, .green]
        rcGame.rotateUFC()
        XCTAssertEqual(.blue, rcGame.ff[0])
    }
    
    func generateGame(index: Int, face: RCFace, color: RCColor) -> RCGame {
        var rcGame = RCGame()
        
        rcGame.rf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.uf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.df = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.ff = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.lf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.bf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
        
        switch face {
        case .FF:
            rcGame.ff[index] = color
        case .RF:
            rcGame.rf[index] = color
        case .UF:
            rcGame.uf[index] = color
        case .DF:
            rcGame.df[index] = color
        case .LF:
            rcGame.lf[index] = color
        case .BF:
            rcGame.bf[index] = color
        }
        
        return rcGame
    }
    
}
