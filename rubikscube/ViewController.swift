import UIKit

class ViewController: UIViewController {
    var brain = RubiksBrain()
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boardView.frontFace = brain.frontFace
        boardView.rightFace = brain.rightFace
        boardView.topFace = brain.topFace
        boardView.setNeedsDisplay()
    }

    @IBAction func rotateFrontClockwise(_ sender: Any) {
        brain.rotateFront()
        update()
    }
    
    @IBAction func rotateFrontCounterclockwise(_ sender: Any) {
        brain.rotateFront()
        brain.rotateFront()
        brain.rotateFront()
        update()
    }
    
    @IBAction func rotateTopClockwise(_ sender: Any) {
        brain.rotateTop()
        update()
    }
    
    @IBAction func rotateTopCounterclockwise(_ sender: Any) {
        brain.rotateTop()
        brain.rotateTop()
        brain.rotateTop()
        update()
    }
    
    @IBAction func rotateRightClockwise(_ sender: Any) {
        brain.rotateRight()
        update()
    }
    
    @IBAction func rotateRightCounterclockwise(_ sender: Any) {
        brain.rotateRight()
        brain.rotateRight()
        brain.rotateRight()
        update()
    }
    
    @IBAction func rotateLeftClockwise(_ sender: Any) {
        brain.rotateLeft()
        update()
    }
    
    @IBAction func rotateLeftCounterclockwise(_ sender: Any) {
        brain.rotateLeft()
        brain.rotateLeft()
        brain.rotateLeft()
        update()
    }
    
    func update() {
        boardView.frontFace = brain.frontFace
        boardView.rightFace = brain.rightFace
        boardView.topFace = brain.topFace
        boardView.setNeedsDisplay()
    }
}

