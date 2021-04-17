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
    func testRotateFFCC() {
        var rcGame = RCGame()
        rcGame.ff = [.white, .green, .green, .green, .green, .green, .green, .green, .green]
        XCTAssertEqual(.white, rcGame.ff[0])
        XCTAssertEqual(.green, rcGame.ff[8])
        rcGame.rotateFFCC()
        XCTAssertEqual(.white, rcGame.ff[6])
        XCTAssertEqual(.green, rcGame.ff[2])
    }
}
