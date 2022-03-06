import XCTest

@testable import rubikscube

class RubiksBrainTests: XCTestCase {

    func testRubiksBrain() {
        let rubiksBrain = RubiksBrain()
        print(rubiksBrain)
    }
    
    func testRotateFront() {
        var brain = RubiksBrain()
        brain.frontFace[0] = .red
        XCTAssertEqual(.red, brain.frontFace[0])
        brain.rotateFront()
//        XCTAssertEqual(.red, brain.frontFace[])
    }
    
}
