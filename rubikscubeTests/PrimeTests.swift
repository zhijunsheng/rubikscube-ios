//
//  PrimeTests.swift
//  rubikscubeTests
//
//  Created by Halwong on 2019/4/24.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import XCTest

class PrimeTests: XCTestCase {
    
    func testIsPrime() {
        XCTAssertFalse(isPrime(number: 25))
        XCTAssertFalse(isPrime(number: 12))
        
        XCTAssertTrue(isPrime(number: 31))
        XCTAssertTrue(isPrime(number: 331))
        XCTAssertTrue(isPrime(number: 3331))
        XCTAssertTrue(isPrime(number: 33331))
        XCTAssertTrue(isPrime(number: 333331))
        XCTAssertTrue(isPrime(number: 3333331))
        XCTAssertTrue(isPrime(number: 33333331))
        XCTAssertFalse(isPrime(number: 333333331))
        XCTAssertFalse(isPrime(number: 3333333331))
        
        XCTAssertTrue(isPrime(number: 30303030303031))
    }
    
    func isPrime(number: Int) -> Bool {
        for i in 2 ... Int(sqrt(Double(number))) {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
    
    func testWhileLoop() {
        var number = 0
        while number < 5 {
            number = number + 1
            print(number)
        }
    }
    
    func testDoWhileLoop() {
        var number = 0
        repeat {
            number = number + 1
            print(number)
        } while number < 5
    }
}
