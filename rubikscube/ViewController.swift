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
    
    func update() {
        boardView.frontFace = brain.frontFace
        boardView.rightFace = brain.rightFace
        boardView.topFace = brain.topFace
        boardView.setNeedsDisplay()
    }
}

