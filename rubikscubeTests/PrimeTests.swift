//
//  PrimeTests.swift
//  rubikscubeTests
//
//  Created by Halwong on 2019/4/24.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import XCTest

class PrimeTests: XCTestCase {
    
    func testPrime() {
        let prime: Int = 10001
        
        if prime % 3 != 0 && prime % 2 != 0 && prime % 5 != 0 {
            print("Prime")
        } else {
            print("Not Prime")
        }
    }
    
    
}
