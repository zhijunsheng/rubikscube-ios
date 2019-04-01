import XCTest
@testable import rubikscube

class RubiksCubeTests: XCTestCase {
    
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
    
    func testRotateL0() {
        var rubiksCube: RubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .red, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.orange, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,])
        XCTAssertEqual(.orange, rubiksCube.left[0])
        XCTAssertEqual(.blue, rubiksCube.left[2])
        
        rubiksCube.rotateL()
        
        XCTAssertEqual(.orange, rubiksCube.left[2])
        XCTAssertEqual(.blue, rubiksCube.left[0])
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
    
    func testRotateB() {
        var rubiksCube: RubiksCube = RubiksCube(
            up: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            front: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            right: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            down: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
            back: [.blue, .blue, .white, .blue, .blue, .blue, .blue, .blue, .blue,])
        XCTAssertEqual(.white, rubiksCube.back[2])
        XCTAssertEqual(.blue, rubiksCube.back[8])
        
        rubiksCube.rotateB()
        
        XCTAssertEqual(.white, rubiksCube.back[8])
        XCTAssertEqual(.blue, rubiksCube.back[2])
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
