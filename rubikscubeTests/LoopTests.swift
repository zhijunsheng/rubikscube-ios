import XCTest

class LoopTests: XCTestCase {
    
    /*
     
     *
     **
     ***
     ****
     *****
     ******
     *******
     
    */
    func testExample() {
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("", terminator:  "\n")
        
//        for _ in 0..<7 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")
        
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator:  "")
//        print("", terminator:  "\n")
        
//        for _ in 0..<6 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")

//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("", terminator:  "\n")
        
//        for _ in 0..<5 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")
        
//        print("*", terminator: "")
//        print("*", terminator:  "")
//        print("*", terminator:  "")
//        print("*", terminator:  "")
//        print("", terminator:  "\n")
        
//        for _ in 0..<4 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")

//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("", terminator:  "\n")
        
//        for _ in 0..<3 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")

//        print("*", terminator: "")
//        print("*", terminator: "")
//        print("", terminator:  "\n")
        
//        for _ in 0..<2 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")
        
//        print("*", terminator: "")
//        print("", terminator:  "\n")
        
//        for _ in 0..<1 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")
        
        // i -> i * 2
        // 0 -> 0
        // 1 -> 2
        // 2 -> 4
        // 3 -> 6
        // 4 -> 8
        // 5 -> 10
        // 6 -> 12
        
        // i -> i * 2 + 3
        // 0 -> 3
        // 1 -> 5
        // 2 -> 7
        // 3 -> 9
        // 4 -> 11
        // 5 -> 13
        // 6 -> 15
        
        // i -> 6 - i
        // 0 -> 6
        // 1 -> 5
        // 2 -> 4
        // 3 -> 3
        // 4 -> 2
        // 5 -> 1
        // 6 -> 0
        for i in 0..<7 {
            print("\(7 - i)", terminator: "")
            for _ in 0..<7 - i{
                print("*", terminator: "")
            }
            print("", terminator:  "\n")
        }
        
//        for i in 1..<8 {
//            for _ in 0..<i {
//                print("*", terminator: "")
//            }
//            print("", terminator:  "\n")
//        }
        
//        for _ in 0..<5 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")
//
//        for _ in 0..<6 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")
//
//        for _ in 0..<7 {
//            print("*", terminator: "")
//        }
//        print("", terminator:  "\n")
    }
}
