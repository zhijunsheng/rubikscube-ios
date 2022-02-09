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
    
    func testRotateUFC() {
        // Down face
        
        var rcGame = RCGame.generateGame(index: 0, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[0], .red)
        XCTAssertEqual(rcGame.uf[2], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.uf[2], .red)
        XCTAssertEqual(rcGame.uf[0], .green)
        
        rcGame = RCGame.generateGame(index: 1, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[1], .red)
        XCTAssertEqual(rcGame.uf[5], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.uf[5], .red)
        XCTAssertEqual(rcGame.uf[1], .green)
        
        rcGame = RCGame.generateGame(index: 2, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[2], .red)
        XCTAssertEqual(rcGame.uf[8], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.uf[8], .red)
        XCTAssertEqual(rcGame.uf[2], .green)
        
        rcGame = RCGame.generateGame(index: 3, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[3], .red)
        XCTAssertEqual(rcGame.uf[1], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.uf[1], .red)
        XCTAssertEqual(rcGame.uf[3], .green)
        
        rcGame = RCGame.generateGame(index: 5, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[5], .red)
        XCTAssertEqual(rcGame.uf[7], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.uf[7], .red)
        XCTAssertEqual(rcGame.uf[5], .green)
        
        rcGame = RCGame.generateGame(index: 6, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[6], .red)
        XCTAssertEqual(rcGame.uf[0], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.uf[0], .red)
        XCTAssertEqual(rcGame.uf[6], .green)
        
        rcGame = RCGame.generateGame(index: 7, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[7], .red)
        XCTAssertEqual(rcGame.uf[3], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.uf[3], .red)
        XCTAssertEqual(rcGame.uf[7], .green)
        
        rcGame = RCGame.generateGame(index: 8, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[8], .red)
        XCTAssertEqual(rcGame.uf[6], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.uf[6], .red)
        XCTAssertEqual(rcGame.uf[8], .green)
        
        // Down sides

        rcGame = RCGame.generateGame(index: 0, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[0], .red)
        XCTAssertEqual(rcGame.lf[0], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.lf[0], .red)
        XCTAssertEqual(rcGame.ff[0], .green)

        rcGame = RCGame.generateGame(index: 1, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[1], .red)
        XCTAssertEqual(rcGame.lf[1], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.lf[1], .red)
        XCTAssertEqual(rcGame.ff[1], .green)

        rcGame = RCGame.generateGame(index: 2, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[2], .red)
        XCTAssertEqual(rcGame.lf[2], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.lf[2], .red)
        XCTAssertEqual(rcGame.ff[2], .green)

        rcGame = RCGame.generateGame(index: 0, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[0], .red)
        XCTAssertEqual(rcGame.bf[0], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.lf[0], .green)

        rcGame = RCGame.generateGame(index: 1, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[1], .red)
        XCTAssertEqual(rcGame.bf[1], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.bf[1], .red)
        XCTAssertEqual(rcGame.lf[1], .green)

        rcGame = RCGame.generateGame(index: 2, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[2], .red)
        XCTAssertEqual(rcGame.bf[2], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.bf[2], .red)
        XCTAssertEqual(rcGame.lf[2], .green)

        rcGame = RCGame.generateGame(index: 0, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.rf[0], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.rf[0], .red)
        XCTAssertEqual(rcGame.bf[0], .green)

        rcGame = RCGame.generateGame(index: 1, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[1], .red)
        XCTAssertEqual(rcGame.rf[1], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.rf[1], .red)
        XCTAssertEqual(rcGame.bf[1], .green)

        rcGame = RCGame.generateGame(index: 2, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[2], .red)
        XCTAssertEqual(rcGame.rf[2], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.rf[2], .red)
        XCTAssertEqual(rcGame.bf[2], .green)

        rcGame = RCGame.generateGame(index: 0, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[0], .red)
        XCTAssertEqual(rcGame.ff[0], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.ff[0], .red)
        XCTAssertEqual(rcGame.rf[0], .green)

        rcGame = RCGame.generateGame(index: 1, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[1], .red)
        XCTAssertEqual(rcGame.ff[1], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.ff[1], .red)
        XCTAssertEqual(rcGame.rf[1], .green)

        rcGame = RCGame.generateGame(index: 2, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[2], .red)
        XCTAssertEqual(rcGame.ff[2], .green)
        rcGame.rotateUC()
        XCTAssertEqual(rcGame.ff[2], .red)
        XCTAssertEqual(rcGame.rf[2], .green)
    }
    
    func testRotateDFC() {
        // Down face
        
        var rcGame = RCGame.generateGame(index: 0, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[0], .red)
        XCTAssertEqual(rcGame.df[2], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.df[2], .red)
        XCTAssertEqual(rcGame.df[0], .green)
        
        rcGame = RCGame.generateGame(index: 1, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[1], .red)
        XCTAssertEqual(rcGame.df[5], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.df[5], .red)
        XCTAssertEqual(rcGame.df[1], .green)
        
        rcGame = RCGame.generateGame(index: 2, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[2], .red)
        XCTAssertEqual(rcGame.df[8], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.df[8], .red)
        XCTAssertEqual(rcGame.df[2], .green)
        
        rcGame = RCGame.generateGame(index: 3, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[3], .red)
        XCTAssertEqual(rcGame.df[1], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.df[1], .red)
        XCTAssertEqual(rcGame.df[3], .green)

        
        rcGame = RCGame.generateGame(index: 5, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[5], .red)
        XCTAssertEqual(rcGame.df[7], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.df[7], .red)
        XCTAssertEqual(rcGame.df[5], .green)
        
        rcGame = RCGame.generateGame(index: 6, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[6], .red)
        XCTAssertEqual(rcGame.df[0], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.df[0], .red)
        XCTAssertEqual(rcGame.df[6], .green)
        
        rcGame = RCGame.generateGame(index: 7, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[7], .red)
        XCTAssertEqual(rcGame.df[3], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.df[3], .red)
        XCTAssertEqual(rcGame.df[7], .green)
        
        rcGame = RCGame.generateGame(index: 8, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[8], .red)
        XCTAssertEqual(rcGame.df[6], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.df[6], .red)
        XCTAssertEqual(rcGame.df[8], .green)
        
        // Down sides

        rcGame = RCGame.generateGame(index: 8, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[8], .red)
        XCTAssertEqual(rcGame.rf[8], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.rf[8], .red)
        XCTAssertEqual(rcGame.ff[8], .green)

        rcGame = RCGame.generateGame(index: 7, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[7], .red)
        XCTAssertEqual(rcGame.rf[7], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.rf[7], .red)
        XCTAssertEqual(rcGame.ff[7], .green)

        rcGame = RCGame.generateGame(index: 6, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[6], .red)
        XCTAssertEqual(rcGame.rf[6], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.rf[6], .red)
        XCTAssertEqual(rcGame.ff[6], .green)

        rcGame = RCGame.generateGame(index: 6, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[6], .red)
        XCTAssertEqual(rcGame.bf[6], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.rf[6], .green)

        rcGame = RCGame.generateGame(index: 7, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[7], .red)
        XCTAssertEqual(rcGame.bf[7], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.bf[7], .red)
        XCTAssertEqual(rcGame.rf[7], .green)

        rcGame = RCGame.generateGame(index: 8, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[8], .red)
        XCTAssertEqual(rcGame.bf[8], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.bf[8], .red)
        XCTAssertEqual(rcGame.rf[8], .green)

        rcGame = RCGame.generateGame(index: 8, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[8], .red)
        XCTAssertEqual(rcGame.lf[8], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.lf[8], .red)
        XCTAssertEqual(rcGame.bf[8], .green)

        rcGame = RCGame.generateGame(index: 7, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[7], .red)
        XCTAssertEqual(rcGame.lf[7], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.lf[7], .red)
        XCTAssertEqual(rcGame.bf[7], .green)

        rcGame = RCGame.generateGame(index: 6, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.lf[6], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.lf[6], .red)
        XCTAssertEqual(rcGame.bf[6], .green)

        rcGame = RCGame.generateGame(index: 8, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[8], .red)
        XCTAssertEqual(rcGame.ff[8], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.ff[8], .red)
        XCTAssertEqual(rcGame.lf[8], .green)

        rcGame = RCGame.generateGame(index: 7, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[7], .red)
        XCTAssertEqual(rcGame.ff[7], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.ff[7], .red)
        XCTAssertEqual(rcGame.lf[7], .green)

        rcGame = RCGame.generateGame(index: 6, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[6], .red)
        XCTAssertEqual(rcGame.ff[6], .green)
        rcGame.rotateDC()
        XCTAssertEqual(rcGame.ff[6], .red)
        XCTAssertEqual(rcGame.lf[6], .green)
    }
    
    func testRotateRFC() {
        // Right face
        
        var rcGame = RCGame.generateGame(index: 0, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[0], .red)
        XCTAssertEqual(rcGame.rf[2], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.rf[2], .red)
        XCTAssertEqual(rcGame.rf[0], .green)
        
        rcGame = RCGame.generateGame(index: 1, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[1], .red)
        XCTAssertEqual(rcGame.rf[5], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.rf[5], .red)
        XCTAssertEqual(rcGame.rf[1], .green)
        
        rcGame = RCGame.generateGame(index: 2, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[2], .red)
        XCTAssertEqual(rcGame.rf[8], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.rf[8], .red)
        XCTAssertEqual(rcGame.rf[2], .green)
        
        rcGame = RCGame.generateGame(index: 3, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[3], .red)
        XCTAssertEqual(rcGame.rf[1], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.rf[1], .red)
        XCTAssertEqual(rcGame.rf[3], .green)
        
        rcGame = RCGame.generateGame(index: 5, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[5], .red)
        XCTAssertEqual(rcGame.rf[7], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.rf[7], .red)
        XCTAssertEqual(rcGame.rf[5], .green)
        
        rcGame = RCGame.generateGame(index: 6, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[6], .red)
        XCTAssertEqual(rcGame.rf[0], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.rf[0], .red)
        XCTAssertEqual(rcGame.rf[6], .green)
        
        rcGame = RCGame.generateGame(index: 7, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[7], .red)
        XCTAssertEqual(rcGame.rf[3], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.rf[3], .red)
        XCTAssertEqual(rcGame.rf[7], .green)
        
        rcGame = RCGame.generateGame(index: 8, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[8], .red)
        XCTAssertEqual(rcGame.rf[6], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.rf[6], .red)
        XCTAssertEqual(rcGame.rf[8], .green)
        
        // Right sides

        rcGame = RCGame.generateGame(index: 8, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[8], .red)
        XCTAssertEqual(rcGame.bf[0], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.uf[8], .green)

        rcGame = RCGame.generateGame(index: 5, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[5], .red)
        XCTAssertEqual(rcGame.bf[3], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.bf[3], .red)
        XCTAssertEqual(rcGame.uf[5], .green)

        rcGame = RCGame.generateGame(index: 2, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[2], .red)
        XCTAssertEqual(rcGame.bf[6], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.uf[2], .green)

        rcGame = RCGame.generateGame(index: 0, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.df[8], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.df[8], .red)
        XCTAssertEqual(rcGame.bf[0], .green)

        rcGame = RCGame.generateGame(index: 3, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[3], .red)
        XCTAssertEqual(rcGame.df[5], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.df[5], .red)
        XCTAssertEqual(rcGame.bf[3], .green)

        rcGame = RCGame.generateGame(index: 6, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.df[2], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.df[2], .red)
        XCTAssertEqual(rcGame.bf[6], .green)

        rcGame = RCGame.generateGame(index: 8, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[8], .red)
        XCTAssertEqual(rcGame.ff[8], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.ff[8], .red)
        XCTAssertEqual(rcGame.df[8], .green)

        rcGame = RCGame.generateGame(index: 5, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[5], .red)
        XCTAssertEqual(rcGame.ff[5], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.ff[5], .red)
        XCTAssertEqual(rcGame.df[5], .green)

        rcGame = RCGame.generateGame(index: 2, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[2], .red)
        XCTAssertEqual(rcGame.ff[2], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.ff[2], .red)
        XCTAssertEqual(rcGame.df[2], .green)

        rcGame = RCGame.generateGame(index: 2, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[2], .red)
        XCTAssertEqual(rcGame.uf[2], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.uf[2], .red)
        XCTAssertEqual(rcGame.ff[2], .green)

        rcGame = RCGame.generateGame(index: 5, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[5], .red)
        XCTAssertEqual(rcGame.uf[5], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.uf[5], .red)
        XCTAssertEqual(rcGame.ff[5], .green)

        rcGame = RCGame.generateGame(index: 8, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[8], .red)
        XCTAssertEqual(rcGame.uf[8], .green)
        rcGame.rotateRC()
        XCTAssertEqual(rcGame.uf[8], .red)
        XCTAssertEqual(rcGame.ff[8], .green)
    }
    
    func testRotateFFC() {
        // Front face
        
        var rcGame = RCGame.generateGame(index: 0, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[0], .red)
        XCTAssertEqual(rcGame.ff[2], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.ff[2], .red)
        XCTAssertEqual(rcGame.ff[0], .green)
        
        rcGame = RCGame.generateGame(index: 1, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[1], .red)
        XCTAssertEqual(rcGame.ff[5], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.ff[5], .red)
        XCTAssertEqual(rcGame.ff[1], .green)
        
        rcGame = RCGame.generateGame(index: 2, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[2], .red)
        XCTAssertEqual(rcGame.ff[8], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.ff[8], .red)
        XCTAssertEqual(rcGame.ff[2], .green)
        
        rcGame = RCGame.generateGame(index: 3, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[3], .red)
        XCTAssertEqual(rcGame.ff[1], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.ff[1], .red)
        XCTAssertEqual(rcGame.ff[3], .green)
        
        rcGame = RCGame.generateGame(index: 5, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[5], .red)
        XCTAssertEqual(rcGame.ff[7], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.ff[7], .red)
        XCTAssertEqual(rcGame.ff[5], .green)
        
        rcGame = RCGame.generateGame(index: 6, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[6], .red)
        XCTAssertEqual(rcGame.ff[0], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.ff[0], .red)
        XCTAssertEqual(rcGame.ff[6], .green)
        
        rcGame = RCGame.generateGame(index: 7, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[7], .red)
        XCTAssertEqual(rcGame.ff[3], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.ff[3], .red)
        XCTAssertEqual(rcGame.ff[7], .green)
        
        rcGame = RCGame.generateGame(index: 8, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[8], .red)
        XCTAssertEqual(rcGame.ff[6], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.ff[6], .red)
        XCTAssertEqual(rcGame.ff[8], .green)
        
        // Front sides

        rcGame = RCGame.generateGame(index: 6, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[6], .red)
        XCTAssertEqual(rcGame.rf[0], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.rf[0], .red)
        XCTAssertEqual(rcGame.uf[6], .green)

        rcGame = RCGame.generateGame(index: 7, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[7], .red)
        XCTAssertEqual(rcGame.rf[3], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.rf[3], .red)
        XCTAssertEqual(rcGame.uf[7], .green)

        rcGame = RCGame.generateGame(index: 8, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[8], .red)
        XCTAssertEqual(rcGame.rf[6], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.rf[6], .red)
        XCTAssertEqual(rcGame.uf[8], .green)

        rcGame = RCGame.generateGame(index: 0, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[0], .red)
        XCTAssertEqual(rcGame.df[2], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.df[2], .red)
        XCTAssertEqual(rcGame.rf[0], .green)

        rcGame = RCGame.generateGame(index: 3, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[3], .red)
        XCTAssertEqual(rcGame.df[1], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.df[1], .red)
        XCTAssertEqual(rcGame.rf[3], .green)

        rcGame = RCGame.generateGame(index: 6, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[6], .red)
        XCTAssertEqual(rcGame.df[0], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.df[0], .red)
        XCTAssertEqual(rcGame.rf[6], .green)

        rcGame = RCGame.generateGame(index: 0, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[0], .red)
        XCTAssertEqual(rcGame.lf[2], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.lf[2], .red)
        XCTAssertEqual(rcGame.df[0], .green)

        rcGame = RCGame.generateGame(index: 1, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[1], .red)
        XCTAssertEqual(rcGame.lf[5], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.lf[5], .red)
        XCTAssertEqual(rcGame.df[1], .green)

        rcGame = RCGame.generateGame(index: 2, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[2], .red)
        XCTAssertEqual(rcGame.lf[8], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.lf[8], .red)
        XCTAssertEqual(rcGame.df[2], .green)

        rcGame = RCGame.generateGame(index: 2, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[2], .red)
        XCTAssertEqual(rcGame.uf[8], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.uf[8], .red)
        XCTAssertEqual(rcGame.lf[2], .green)

        rcGame = RCGame.generateGame(index: 5, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[5], .red)
        XCTAssertEqual(rcGame.uf[7], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.uf[7], .red)
        XCTAssertEqual(rcGame.lf[5], .green)

        rcGame = RCGame.generateGame(index: 8, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[8], .red)
        XCTAssertEqual(rcGame.uf[6], .green)
        rcGame.rotateFC()
        XCTAssertEqual(rcGame.uf[6], .red)
        XCTAssertEqual(rcGame.lf[8], .green)
    }
    
    func testRotateLFC() {
        // Left face
        
        var rcGame = RCGame.generateGame(index: 0, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[0], .red)
        XCTAssertEqual(rcGame.lf[2], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.lf[2], .red)
        XCTAssertEqual(rcGame.lf[0], .green)
        
        rcGame = RCGame.generateGame(index: 1, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[1], .red)
        XCTAssertEqual(rcGame.lf[5], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.lf[5], .red)
        XCTAssertEqual(rcGame.lf[1], .green)
        
        rcGame = RCGame.generateGame(index: 2, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[2], .red)
        XCTAssertEqual(rcGame.lf[8], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.lf[8], .red)
        XCTAssertEqual(rcGame.lf[2], .green)
        
        rcGame = RCGame.generateGame(index: 3, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[3], .red)
        XCTAssertEqual(rcGame.lf[1], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.lf[1], .red)
        XCTAssertEqual(rcGame.lf[3], .green)
        
        rcGame = RCGame.generateGame(index: 5, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[5], .red)
        XCTAssertEqual(rcGame.lf[7], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.lf[7], .red)
        XCTAssertEqual(rcGame.lf[5], .green)
        
        rcGame = RCGame.generateGame(index: 6, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[6], .red)
        XCTAssertEqual(rcGame.lf[0], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.lf[0], .red)
        XCTAssertEqual(rcGame.lf[6], .green)
        
        rcGame = RCGame.generateGame(index: 7, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[7], .red)
        XCTAssertEqual(rcGame.lf[3], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.lf[3], .red)
        XCTAssertEqual(rcGame.lf[7], .green)
        
        rcGame = RCGame.generateGame(index: 8, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[8], .red)
        XCTAssertEqual(rcGame.lf[6], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.lf[6], .red)
        XCTAssertEqual(rcGame.lf[8], .green)
        
        // Left sides

        rcGame = RCGame.generateGame(index: 0, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[0], .red)
        XCTAssertEqual(rcGame.ff[0], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.ff[0], .red)
        XCTAssertEqual(rcGame.uf[0], .green)

        rcGame = RCGame.generateGame(index: 3, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[3], .red)
        XCTAssertEqual(rcGame.ff[3], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.ff[3], .red)
        XCTAssertEqual(rcGame.uf[3], .green)

        rcGame = RCGame.generateGame(index: 6, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[6], .red)
        XCTAssertEqual(rcGame.ff[6], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.ff[6], .red)
        XCTAssertEqual(rcGame.uf[6], .green)

        rcGame = RCGame.generateGame(index: 0, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[0], .red)
        XCTAssertEqual(rcGame.df[0], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.df[0], .red)
        XCTAssertEqual(rcGame.ff[0], .green)

        rcGame = RCGame.generateGame(index: 3, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[3], .red)
        XCTAssertEqual(rcGame.df[3], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.df[3], .red)
        XCTAssertEqual(rcGame.ff[3], .green)

        rcGame = RCGame.generateGame(index: 6, face: .FF, color: .red)
        XCTAssertEqual(rcGame.ff[6], .red)
        XCTAssertEqual(rcGame.df[6], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.df[6], .red)
        XCTAssertEqual(rcGame.ff[6], .green)

        rcGame = RCGame.generateGame(index: 0, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[0], .red)
        XCTAssertEqual(rcGame.bf[8], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.bf[8], .red)
        XCTAssertEqual(rcGame.df[0], .green)

        rcGame = RCGame.generateGame(index: 3, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[3], .red)
        XCTAssertEqual(rcGame.bf[5], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.bf[5], .red)
        XCTAssertEqual(rcGame.df[3], .green)

        rcGame = RCGame.generateGame(index: 6, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[6], .red)
        XCTAssertEqual(rcGame.bf[2], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.bf[2], .red)
        XCTAssertEqual(rcGame.df[6], .green)

        rcGame = RCGame.generateGame(index: 8, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[8], .red)
        XCTAssertEqual(rcGame.uf[0], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.uf[0], .red)
        XCTAssertEqual(rcGame.bf[8], .green)

        rcGame = RCGame.generateGame(index: 5, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[5], .red)
        XCTAssertEqual(rcGame.uf[3], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.uf[3], .red)
        XCTAssertEqual(rcGame.bf[5], .green)

        rcGame = RCGame.generateGame(index: 2, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[2], .red)
        XCTAssertEqual(rcGame.uf[6], .green)
        rcGame.rotateLC()
        XCTAssertEqual(rcGame.uf[6], .red)
        XCTAssertEqual(rcGame.bf[2], .green)
    }

    func testRotateBFCC() {
        var rcGame = RCGame.generateGame(index: 0, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.bf[6], .green)
        rcGame.rotateBCC()
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.bf[0], .green)
    }
    
    func testRotateBFC() {
        // Back face
        
        var rcGame = RCGame.generateGame(index: 0, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.bf[2], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.bf[2], .red)
        XCTAssertEqual(rcGame.bf[0], .green)
        
        rcGame = RCGame.generateGame(index: 1, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[1], .red)
        XCTAssertEqual(rcGame.bf[5], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.bf[5], .red)
        XCTAssertEqual(rcGame.bf[1], .green)
        
        rcGame = RCGame.generateGame(index: 2, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[2], .red)
        XCTAssertEqual(rcGame.bf[8], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.bf[8], .red)
        XCTAssertEqual(rcGame.bf[2], .green)
        
        rcGame = RCGame.generateGame(index: 3, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[3], .red)
        XCTAssertEqual(rcGame.bf[1], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.bf[1], .red)
        XCTAssertEqual(rcGame.bf[3], .green)
        
        rcGame = RCGame.generateGame(index: 5, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[5], .red)
        XCTAssertEqual(rcGame.bf[7], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.bf[7], .red)
        XCTAssertEqual(rcGame.bf[5], .green)
        
        rcGame = RCGame.generateGame(index: 6, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.bf[0], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.bf[0], .red)
        XCTAssertEqual(rcGame.bf[6], .green)
        
        rcGame = RCGame.generateGame(index: 7, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[7], .red)
        XCTAssertEqual(rcGame.bf[3], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.bf[3], .red)
        XCTAssertEqual(rcGame.bf[7], .green)
        
        rcGame = RCGame.generateGame(index: 8, face: .BF, color: .red)
        XCTAssertEqual(rcGame.bf[8], .red)
        XCTAssertEqual(rcGame.bf[6], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.bf[6], .red)
        XCTAssertEqual(rcGame.bf[8], .green)
        
        // Back sides
        
        rcGame = RCGame.generateGame(index: 2, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[2], .red)
        XCTAssertEqual(rcGame.lf[0], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.lf[0], .red)
        XCTAssertEqual(rcGame.uf[2], .green)
        
        rcGame = RCGame.generateGame(index: 1, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[1], .red)
        XCTAssertEqual(rcGame.lf[3], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.lf[3], .red)
        XCTAssertEqual(rcGame.uf[1], .green)
        
        rcGame = RCGame.generateGame(index: 0, face: .UF, color: .red)
        XCTAssertEqual(rcGame.uf[0], .red)
        XCTAssertEqual(rcGame.lf[6], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.lf[6], .red)
        XCTAssertEqual(rcGame.uf[0], .green)
        
        rcGame = RCGame.generateGame(index: 0, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[0], .red)
        XCTAssertEqual(rcGame.df[6], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.df[6], .red)
        XCTAssertEqual(rcGame.lf[0], .green)
        
        rcGame = RCGame.generateGame(index: 3, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[3], .red)
        XCTAssertEqual(rcGame.df[7], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.df[7], .red)
        XCTAssertEqual(rcGame.lf[3], .green)
        
        rcGame = RCGame.generateGame(index: 6, face: .LF, color: .red)
        XCTAssertEqual(rcGame.lf[6], .red)
        XCTAssertEqual(rcGame.df[8], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.df[8], .red)
        XCTAssertEqual(rcGame.lf[6], .green)
        
        rcGame = RCGame.generateGame(index: 6, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[6], .red)
        XCTAssertEqual(rcGame.rf[8], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.rf[8], .red)
        XCTAssertEqual(rcGame.df[6], .green)
        
        rcGame = RCGame.generateGame(index: 7, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[7], .red)
        XCTAssertEqual(rcGame.rf[5], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.rf[5], .red)
        XCTAssertEqual(rcGame.df[7], .green)
        
        rcGame = RCGame.generateGame(index: 8, face: .DF, color: .red)
        XCTAssertEqual(rcGame.df[8], .red)
        XCTAssertEqual(rcGame.rf[2], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.rf[2], .red)
        XCTAssertEqual(rcGame.df[8], .green)
        
        rcGame = RCGame.generateGame(index: 8, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[8], .red)
        XCTAssertEqual(rcGame.uf[2], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.uf[2], .red)
        XCTAssertEqual(rcGame.rf[6], .green)
        
        rcGame = RCGame.generateGame(index: 5, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[5], .red)
        XCTAssertEqual(rcGame.uf[1], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.uf[1], .red)
        XCTAssertEqual(rcGame.rf[5], .green)
    
        rcGame = RCGame.generateGame(index: 2, face: .RF, color: .red)
        XCTAssertEqual(rcGame.rf[2], .red)
        XCTAssertEqual(rcGame.uf[0], .green)
        rcGame.rotateBC()
        XCTAssertEqual(rcGame.uf[0], .red)
        XCTAssertEqual(rcGame.rf[2], .green)
    }
    
    
    
 
    
    func testRotateFFCCc1() {
        var rcGame = RCGame()
        rcGame.ff = [.green, .white, .green, .green, .green, .green, .green, .green, .green]
        XCTAssertEqual(.white, rcGame.ff[1])
        XCTAssertEqual(.green, rcGame.ff[3])
        rcGame.rotateFCC()
        XCTAssertEqual(.white, rcGame.ff[3])
        XCTAssertEqual(.green, rcGame.ff[1])
    }
    
    func testRotateFFCCSide() {
        var rcGame = RCGame()
        rcGame.rf = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.df = [.green, .green, .red, .green, .green, .green, .green, .green, .green]
        XCTAssertEqual(.blue, rcGame.rf[0])
        XCTAssertEqual(.red, rcGame.df[2])
        rcGame.rotateFCC()
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
        rcGame.rotateFCC()
        rcGame.rotateFCC()
        rcGame.rotateFCC()
        
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
    
    func testRotateRFCC() {
        var rcGame = RCGame()
        rcGame.rf = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
        rcGame.df = [.green, .green, .red, .green, .green, .green, .green, .green, .green]
        rcGame.rotateRCC()
        XCTAssertEqual(.blue, rcGame.rf[6])
    }
    
}
