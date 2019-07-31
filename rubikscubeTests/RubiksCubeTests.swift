import XCTest
@testable import rubikscube

class RubiksCubeTests: XCTestCase {
    var rubiksCube = RubiksCube(
        up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
        front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
        right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
        down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
        left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
        back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
    )
    
    func testRubiksCubeDescription() {
        rubiksCube = RubiksCube(
            up: [.green, .yellow, .blue, .blue, .orange, .blue, .blue, .white, .blue,],
            front: [.red, .red, .blue, .white, .green, .yellow, .blue, .blue, .orange,],
            right: [.white, .yellow, .blue, .green, .blue, .blue, .blue, .blue, .blue,],
            down: [.yellow, .white, .blue, .green, .orange, .blue, .blue, .blue, .blue,],
            left: [.orange, .green, .green, .blue, .orange, .green, .blue, .blue, .blue,],
            back: [.blue, .yellow, .red, .orange, .blue, .green, .blue, .blue, .blue,]
        )
        print(rubiksCube)
    }
    
    func testRotateL() {
        rubiksCube = RubiksCube(
            up: [.white, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.red, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .green, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateL()
        XCTAssertEqual(.white, rubiksCube.front[0])
        XCTAssertEqual(.red, rubiksCube.left[2])
        XCTAssertEqual(.green, rubiksCube.up[6])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        // TODO: not done yet ...
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        
    }
    
    func testRotateR() {
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .green,],
            front: [.blue, .blue, .white, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.red, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateR()
        XCTAssertEqual(.white, rubiksCube.up[2])
        XCTAssertEqual(.red, rubiksCube.right[2])
        XCTAssertEqual(.green, rubiksCube.back[0])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .white, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .red, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.green, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateR()
        XCTAssertEqual(.white, rubiksCube.back[6])
        XCTAssertEqual(.red, rubiksCube.right[8])
        XCTAssertEqual(.green, rubiksCube.down[8])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .red,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .green,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .white, .blue, .blue,]
        )
        rubiksCube.rotateR()
        XCTAssertEqual(.white, rubiksCube.down[2])
        XCTAssertEqual(.red, rubiksCube.right[6])
        XCTAssertEqual(.green, rubiksCube.front[8])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .green,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .red, .blue, .blue,],
            down: [.blue, .blue, .white, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateR()
        XCTAssertEqual(.white, rubiksCube.front[2])
        XCTAssertEqual(.red, rubiksCube.right[0])
        XCTAssertEqual(.green, rubiksCube.up[8])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .white, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .red, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateR()
        XCTAssertEqual(.white, rubiksCube.back[3])
        XCTAssertEqual(.red, rubiksCube.right[5])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .red, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .white, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateR()
        XCTAssertEqual(.white, rubiksCube.down[5])
        XCTAssertEqual(.red, rubiksCube.right[7])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .red, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .white, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateR()
        XCTAssertEqual(.white, rubiksCube.front[5])
        XCTAssertEqual(.red, rubiksCube.right[3])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .white, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .red, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateR()
        XCTAssertEqual(.white, rubiksCube.up[5])
        XCTAssertEqual(.red, rubiksCube.right[1])
        
    }
    
    func testRotateB() {
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .red, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .white, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.green, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateB()
        XCTAssertEqual(.white, rubiksCube.up[0])
        XCTAssertEqual(.red, rubiksCube.left[0])
        XCTAssertEqual(.green, rubiksCube.back[2])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        
        rubiksCube = RubiksCube(
            up: [.red, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.green, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .white, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateB()
        XCTAssertEqual(.green, rubiksCube.down[6])
        XCTAssertEqual(.red, rubiksCube.left[6])
        XCTAssertEqual(.white, rubiksCube.back[8])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .green, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .red, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .white,]
        )
        rubiksCube.rotateB()
        XCTAssertEqual(.green, rubiksCube.right[8])
        XCTAssertEqual(.red, rubiksCube.down[8])
        XCTAssertEqual(.white, rubiksCube.back[6])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .green,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .red,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .white, .blue, .blue,]
        )
        rubiksCube.rotateB()
        XCTAssertEqual(.green, rubiksCube.up[2])
        XCTAssertEqual(.red, rubiksCube.right[2])
        XCTAssertEqual(.white, rubiksCube.back[0])
        
        rubiksCube = RubiksCube(
            up: [.blue, .red, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .green, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateB()
        XCTAssertEqual(.green, rubiksCube.back[5])
        XCTAssertEqual(.red, rubiksCube.left[3])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .red, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .green, .blue, .blue, .blue,]
        )
        rubiksCube.rotateB()
        XCTAssertEqual(.green, rubiksCube.back[7])
        XCTAssertEqual(.red, rubiksCube.down[7])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .red, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .green, .blue,]
        )
        rubiksCube.rotateB()
        XCTAssertEqual(.green, rubiksCube.back[3])
        XCTAssertEqual(.red, rubiksCube.right[5])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .red, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .green, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateB()
        XCTAssertEqual(.green, rubiksCube.back[1])
        XCTAssertEqual(.red, rubiksCube.up[1])
    }
    
    func testRotateF() {
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .white, .blue, .blue,],
            front: [.red, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .green, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateF()
        XCTAssertEqual(.white, rubiksCube.right[0])
        XCTAssertEqual(.red, rubiksCube.front[2])
        XCTAssertEqual(.green, rubiksCube.up[8])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .red,],
            front: [.blue, .blue, .white, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.green, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateF()
        XCTAssertEqual(.white, rubiksCube.front[8])
        XCTAssertEqual(.red, rubiksCube.right[6])
        XCTAssertEqual(.green, rubiksCube.down[2])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .white,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .red, .blue, .blue,],
            down: [.blue, .blue, .green, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateF()
        XCTAssertEqual(.white, rubiksCube.front[6])
        XCTAssertEqual(.red, rubiksCube.down[0])
        XCTAssertEqual(.green, rubiksCube.left[8])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .white, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.red, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .green,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateF()
        XCTAssertEqual(.white, rubiksCube.front[0])
        XCTAssertEqual(.red, rubiksCube.left[2])
        XCTAssertEqual(.green, rubiksCube.up[6])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .red, .blue,],
            front: [.blue, .white, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateF()
        XCTAssertEqual(.white, rubiksCube.front[5])
        XCTAssertEqual(.red, rubiksCube.right[3])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .red, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .white, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateF()
        XCTAssertEqual(.white, rubiksCube.down[1])
        XCTAssertEqual(.red, rubiksCube.front[7])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .white, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .red, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateF()
        XCTAssertEqual(.red, rubiksCube.left[5])
        XCTAssertEqual(.white, rubiksCube.front[3])
        
        rubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .red, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .white, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,]
        )
        rubiksCube.rotateF()
        XCTAssertEqual(.red, rubiksCube.front[1])
        XCTAssertEqual(.white, rubiksCube.up[7])
    }
    
    func testRotateU0() {
        var rubiksCube: RubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .yellow, .blue, .blue,],
            front: [.red, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .white, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,])
        XCTAssertEqual(.blue, rubiksCube.up[0])
        XCTAssertEqual(.blue, rubiksCube.left[0])
        XCTAssertEqual(.blue, rubiksCube.back[2])
        
        rubiksCube.rotateU()
        
        XCTAssertEqual(.yellow, rubiksCube.up[0])
        XCTAssertEqual(.red, rubiksCube.left[0])
        XCTAssertEqual(.white, rubiksCube.back[2])
    }
    
    func testRotateU2() {
        var rubiksCube: RubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .yellow,],
            front: [.blue, .blue, .red, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.green, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,])
        XCTAssertEqual(.blue, rubiksCube.up[6])
        XCTAssertEqual(.blue, rubiksCube.left[2])
        XCTAssertEqual(.blue, rubiksCube.front[0])
        
        rubiksCube.rotateU()
        
        XCTAssertEqual(.yellow, rubiksCube.up[6])
        XCTAssertEqual(.red, rubiksCube.left[2])
        XCTAssertEqual(.green, rubiksCube.front[0])
    }
    
    func testRotateD5() {
        var rubiksCube: RubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .yellow,],
            front: [.blue, .blue, .red, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.green, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .white, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,])
        XCTAssertEqual(.white, rubiksCube.down[5])
        
        rubiksCube.rotateD()
        
        XCTAssertEqual(.white, rubiksCube.down[7])
    }
    
    func testRotateD0() {
        var rubiksCube: RubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .yellow,],
            front: [.blue, .blue, .red, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.green, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.white, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,])
        XCTAssertEqual(.white, rubiksCube.down[0])
        
        rubiksCube.rotateD()
        
        XCTAssertEqual(.white, rubiksCube.down[2])
    }
    
    func testRotateCubeFR() {
        var rubiksCube: RubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .red, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.white, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,])
        XCTAssertEqual(.white, rubiksCube.down[0])
        XCTAssertEqual(.blue, rubiksCube.down[2])
        
        rubiksCube.rotateCubeFR()
        
        XCTAssertEqual(.white, rubiksCube.down[2])
        XCTAssertEqual(.blue, rubiksCube.down[0])
    }

    // D
    
    func testFtoU() {
        var rubiksCube: RubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .red, .blue, .blue, .white,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,])
        
        XCTAssertEqual(.white, rubiksCube.up[8])
        XCTAssertEqual(.blue, rubiksCube.back[0])
        
        XCTAssertEqual(.red, rubiksCube.up[5])
        XCTAssertEqual(.blue, rubiksCube.back[3])

        rubiksCube.rotateCubeFU()
        
        XCTAssertEqual(.white, rubiksCube.back[0])
        XCTAssertEqual(.blue, rubiksCube.down[0])
        
        XCTAssertEqual(.red, rubiksCube.back[3])
        XCTAssertEqual(.blue, rubiksCube.down[3])
    }
}
