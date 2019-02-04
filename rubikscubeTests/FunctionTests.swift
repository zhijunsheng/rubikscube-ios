
import XCTest

class FunctionTests: XCTestCase {
    
    func testLoops() {

        for i in 0...9 {
            if i < 3 {
                print("i is \(i)")
            } else {
                print("i = \(i)")
            }
        }
    }
    
    func testFunctions() {
        print(("sum =  \(add(value: 12, value2: 345))"))
    }
    
    func sayHello() {
        print("hello world")
    }
    
    func sayHelloTo(name: String) {
        print("Hello: \(name)")
    }
    
    func tripple(value: Int) -> Int {
        let result = 3 * value
        return result
    }
    
    func add(value: Int, value2: Int) -> Int {
        let sum = value + value2
        return sum
    }

}
