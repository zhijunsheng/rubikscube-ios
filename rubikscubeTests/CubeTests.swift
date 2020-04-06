//
//  CubeTests.swift
//  rubikscubeTests
//
//  Created by Grace Huang on 1/30/20.
//  Copyright © 2020 Gold Thumb Inc. All rights reserved.
//

import XCTest
@testable import rubikscube

class CubeTests: XCTestCase {
    
    func testColors() {
        let colorArr: [RubikCubeColor] = [.white, .yellow, .blue, .green, .red,  ]
        let frontFace: [RubikCubeColor] = [.blue, .green, .green, .green, .green, .green, .green, .green, .green]
        
        print("\(frontFace[0]) \(frontFace[1]) \(frontFace[2])")
//        if frontFace[4] == .green {
//            <#code#>
//        }
    }

    func testArray() {
        let intArr: [Int] = [4, 6, 1, 3]
        
        print(intArr[0])
        print(intArr.count)
        for i in 0..<intArr.count { // i = 0, 4
            print("i = \(i),\(intArr[i])")
        }
        var add = 0
        for i in 0..<intArr.count {
            add = add + intArr[i]
        }
        print(add)
        
        let strArr: [String] = ["Tom", "Moon", "Sun"]
    }
    
    func setColorTo(color: RubikCubeColor) -> RubikCubeModel {
        var rubikCube:RubikCubeModel = RubikCubeModel()
        
        for i in 0..<9 {
            rubikCube.topFace[i] = color
            rubikCube.rightFace[i] = color
            rubikCube.frontFace[i] = color
            rubikCube.leftFace[i] = color
            rubikCube.downFace[i] = color
            rubikCube.backFace[i] = color
        }
        return rubikCube
    }
    
    func testTurnCounterCW() {
        var rubikCube = setColorTo(color: .green)
        
        rubikCube.frontFace[4] = .red
        XCTAssertEqual(.red, rubikCube.frontFace[4])
        XCTAssertNotEqual(.red, rubikCube.rightFace[4])

        rubikCube.turnCounterCW()
        XCTAssertEqual(.red, rubikCube.rightFace[4])
        XCTAssertNotEqual(.red, rubikCube.frontFace[4])
    }
    
    
    func testTurnUp() {
//        0
        var rubikCube = setColorTo(color: .green)
        
        rubikCube.frontFace[0] = .red
        XCTAssertEqual(.red, rubikCube.frontFace[0])
        XCTAssertNotEqual(.red, rubikCube.topFace[0])
        rubikCube.turnUp()

        rubikCube.turnUp()
        XCTAssertEqual(.red, rubikCube.backFace[8])
        XCTAssertNotEqual(.red, rubikCube.topFace[0])
        XCTAssertNotEqual(.red, rubikCube.frontFace[0])
        
        // ====== 1
        
        rubikCube = setColorTo(color: .green)
        
        rubikCube.frontFace[1] = .red
        XCTAssertEqual(.red, rubikCube.frontFace[1])
        XCTAssertNotEqual(.red, rubikCube.topFace[1])
        rubikCube.turnUp()
        rubikCube.turnUp()
        XCTAssertEqual(.red, rubikCube.backFace[7])
        XCTAssertNotEqual(.red, rubikCube.topFace[1])
        XCTAssertNotEqual(.red, rubikCube.frontFace[1])
        
        // ====== 2
        
        rubikCube = setColorTo(color: .green)
        
        rubikCube.frontFace[2] = .red
        XCTAssertEqual(.red, rubikCube.frontFace[2])
        XCTAssertNotEqual(.red, rubikCube.topFace[2])
        rubikCube.turnUp()
        rubikCube.turnUp()
        XCTAssertEqual(.red, rubikCube.backFace[6])
        XCTAssertNotEqual(.red, rubikCube.topFace[2])
        XCTAssertNotEqual(.red, rubikCube.frontFace[2])
        
        
        // ====== 3
        
        rubikCube = setColorTo(color: .green)
        
        rubikCube.frontFace[3] = .red
        XCTAssertEqual(.red, rubikCube.frontFace[3])
        XCTAssertNotEqual(.red, rubikCube.topFace[3])
        rubikCube.turnUp()
        rubikCube.turnUp()
        XCTAssertEqual(.red, rubikCube.backFace[5])
        XCTAssertNotEqual(.red, rubikCube.topFace[3])
        XCTAssertNotEqual(.red, rubikCube.frontFace[3])
        
        // ======== 4
        rubikCube = setColorTo(color: .green)
        
        rubikCube.frontFace[4] = .red
        XCTAssertEqual(.red, rubikCube.frontFace[4])
        XCTAssertNotEqual(.red, rubikCube.topFace[4])
        rubikCube.turnUp()
        rubikCube.turnUp()
        XCTAssertEqual(.red, rubikCube.backFace[4])
        XCTAssertNotEqual(.red, rubikCube.topFace[4])
        XCTAssertNotEqual(.red, rubikCube.frontFace[4])
        
        // ======== 5
        rubikCube = setColorTo(color: .green)
        
        rubikCube.frontFace[5] = .red
        rubikCube.topFace[5] = .blue

        XCTAssertEqual(.red, rubikCube.frontFace[5])
        XCTAssertEqual(.blue, rubikCube.topFace[5])

        XCTAssertNotEqual(.red, rubikCube.topFace[5])
        rubikCube.turnUp()
        rubikCube.turnUp()
        XCTAssertEqual(.red, rubikCube.backFace[3])
        XCTAssertEqual(.green, rubikCube.topFace[5])
        XCTAssertNotEqual(.red, rubikCube.frontFace[5])
    }
    
    // turn up two times and front 5,6,7,8 are wrong
    func testBug(){
        var rubikCube = setColorTo(color: .green)
        
        rubikCube.topFace[5] = .red

        rubikCube.turnUp()
        rubikCube.turnUp()
        
        XCTAssertEqual(.red, rubikCube.downFace[5])
        XCTAssertEqual(.green, rubikCube.frontFace[5])
    }
}
