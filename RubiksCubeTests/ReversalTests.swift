import XCTest
class ReversalTests: XCTestCase {

    
    func testReversal() {
        
        for i in 10...99 {
            let m = i / 10
            let n = i % 10
            let t = n * 10 + m
            
            if (i % t == 0 || t % i == 0) && t != i && n != 0 {
                print("yes i = \(i) t = \(t)")
            }
        }
        for i in 100...999 {
            let f = i / 100
            let n = (i % 100) / 10
            let m = i % 10
            let t = m * 100 + n * 10 + f
            
            if (i % t == 0 || t % i == 0) && t != i && m != 0 {
                print("yes i = \(i) t = \(t)")
            }
        }
        for i in 1000...9999 {
            let r = i / 1000
            let f = (i % 1000) / 100
            let n = i / 10 % 10
            let m = i % 10
            let t = m * 1000 + n * 100 + f * 10 + r
            
            if (i % t == 0 || t % i == 0) && t != i && m != 0 {
                print("yes i = \(i) t = \(t)")
            }
        }
        
        
    }
    
}
