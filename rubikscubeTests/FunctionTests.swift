
import XCTest

class FunctionTests: XCTestCase {
    
    func testSwapTwoInts() {
        var x = 3
        var y = 5
        let add: Int
        print("x = \(x), y = \(y)")
        
        add = x
        
        x = y
        y = add
        
        print("x = \(x), y = \(y)")
    }
    
    // mapping
    // 0 is mapped to (0, 0)
    // 0 -> (0, 0)
    // 1 -> (1, 0)
    // 2 -> (2, 0)
    // 3 -> (0, 1)
    // 4 -> (1, 1)
    // 5 -> (2, 1)
    // 6 -> (0, 2)
    // 7 -> (1, 2)
    // 8 -> (2, 2)
    func testMapIndexToColRow() {
        let (col, row) = mapIndexToColRow(index: 0)
        XCTAssertEqual(0, col)
        XCTAssertEqual(0, row)
        let (col1, row1) = mapIndexToColRow(index: 1)
        XCTAssertEqual(1, col1)
        XCTAssertEqual(0, row1)
        let (col2, row2) = mapIndexToColRow(index: 2)
        XCTAssertEqual(2, col2)
        XCTAssertEqual(0, row2)
        let (col3, row3) = mapIndexToColRow(index: 3)
        XCTAssertEqual(0, col3)
        XCTAssertEqual(1, row3)
        let (col4, row4) = mapIndexToColRow(index: 4)
        XCTAssertEqual(1, col4)
        XCTAssertEqual(1, row4)
        let (col5, row5) = mapIndexToColRow(index: 5)
        XCTAssertEqual(2, col5)
        XCTAssertEqual(1, row5)
        let (col6, row6) = mapIndexToColRow(index: 6)
        XCTAssertEqual(0, col6)
        XCTAssertEqual(2, row6)
        let (col7, row7) = mapIndexToColRow(index: 7)
        XCTAssertEqual(1, col7)
        XCTAssertEqual(2, row7)
        let (col8, row8) = mapIndexToColRow(index: 8)
        XCTAssertEqual(2, col8)
        XCTAssertEqual(2, row8)
    }
    
    func mapIndexToColRow(index: Int) -> (Int, Int) {
//        return (index - index / 3 * 3, index / 3)
        return (index % 3, index / 3)
    }
    
    // (0, 0) -> 0
    // (1, 0) -> 1
    // (2, 0) -> 2
    // (0, 1) -> 3
    // (1, 1) -> 4
    // (2, 1) -> 5
    // (0, 2) -> 6
    // (1, 2) -> 7
    // (2, 2) -> 8
    
    func testMapColRowToIndex() {
        XCTAssertEqual(0, mapColRowToIndex(col: 0, row: 0))
        XCTAssertEqual(1, mapColRowToIndex(col: 1, row: 0))
        XCTAssertEqual(2, mapColRowToIndex(col: 2, row: 0))
        XCTAssertEqual(3, mapColRowToIndex(col: 0, row: 1))
        XCTAssertEqual(4, mapColRowToIndex(col: 1, row: 1))
        XCTAssertEqual(5, mapColRowToIndex(col: 2, row: 1))
        XCTAssertEqual(6, mapColRowToIndex(col: 0, row: 2))
        XCTAssertEqual(7, mapColRowToIndex(col: 1, row: 2))
        XCTAssertEqual(8, mapColRowToIndex(col: 2, row: 2))
    }
    
    // (3, 7) -> 37
    // (5, 0) -> 50
    // (0, 9) -> 9
    // (9, 3) -> 93

    func mapColRowToIndex(col: Int, row: Int) -> Int {
            return col + row * 3
    }
    
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
