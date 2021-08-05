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
    
}
