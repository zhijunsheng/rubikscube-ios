//
//  CollatzTests.swift
//  rubikscubeTests
//
//  Created by Halwong on 2019/4/17.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import XCTest

class CollatzTests: XCTestCase {
    
    func testCollatz() {
//        let random = arc4random() < 100
//        collatz(number: random)
    }
    
    func collatz(number: Int) {
        if number <= 0 {
            return
        }
        var x = number
        while x != 1 {
            print(x)
            if x % 2 == 0 {
                x = x / 2
            } else {
                x = x * 3 + 1
            }
        }
        print(x)
    }
    
    func testWhile() {
        for i in 0 ..< 3 {
            print(i)
            print(i)
        }
        var a = 0
        while a < 3 {
            print(a)
            a += 1
        }
    }
}

// 1 4 2 1 4 2 1 4 2 1
// 7, 22, 11, ...
