import XCTest
class ReversalTests: XCTestCase {

    /*
 
     There are only 2 positive integers from 10 to 10,000, which are integral multiples of their "reversals":
     
     ab = i * ba
     or
     abc = j * cba
     or
     abcd = k * dcba
     
     if i / t == 0 || t / i == 0 {
        print("yes")
     }else{
        print("no")
     
     let f = x % (100 / 10)
     print(f)
     let n = (x % 100) / 10
     print(n)
     let m = x / 100
     print(m)
     
     Can you write a program to find them out?
     print(t)
     print(i)
     
     
    */
    func testReversal() {
        
        for i in 10...99 { // 38 , 3, 8,
            let m = i / 10 // 十1
            let n = i % 10 // 个1
            let t = n * 10 + m
            
            if (i % t == 0 || t % i == 0) && t != i && n != 0 {
                print("yes i = \(i) t = \(t)")
            }
        }
        for i in 100...999 { // 549 r
            let f = i / 100 // 百2
            let n = (i % 100) / 10 // 十2
            let m = i % 10 // 个2
            let t = m * 100 + n * 10 + f
            
            if (i % t == 0 || t % i == 0) && t != i && m != 0 {
                print("yes i = \(i) t = \(t)")
            }
        }
        for i in 1000...9999 { // 5732
            let r = i / 1000 // 千3
            let f = (i % 1000) / 100 // 百3
            let n = i / 10 % 10 // 十3
            let m = i % 10 // 个3
            let t = m * 1000 + n * 100 + f * 10 + r
            
            if (i % t == 0 || t % i == 0) && t != i && m != 0 {
                print("yes i = \(i) t = \(t)")
            }
        }
        
        
//        for i in 10...10000 {
//            print(i)
//            // 214 * ? = 412
//            // ✖️: (abba), (a), (12\1a2\1aa2\1ab2)
//        }
        
        
    }
    
//    func testMultiple() {
//        let x = 7
//        let y = 7
//        // ?
//        if x % y == 0 {
//            print("yes")
//        }else{
//            print("no")
//        }
//    }
    
//    func testDigits() {
//        let x = 549
    
        
//        let m = x / 100
//        print(m)
//        let n = (x % 100) / 10
//        print(n)
//        let f = x % (100 / 10)
//        print(f)
        
        
        
        //~82 == 8,2.~
        // m == 8
        // n == 1
        // f == 2
        
        // how to get 218 from m, n, f?
//        let t = f * 100 + n * 10 + m
//        print(t)
        
        
//    }
    
}
