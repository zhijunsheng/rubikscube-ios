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
}
