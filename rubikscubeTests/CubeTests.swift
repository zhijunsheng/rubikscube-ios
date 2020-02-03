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
        if frontFace[4] == .green {
            <#code#>
        }
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

}
