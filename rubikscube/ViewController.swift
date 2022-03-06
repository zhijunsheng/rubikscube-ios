import UIKit

class ViewController: UIViewController, RubiksDelegate {
    
    
    var brain = RubiksBrain()

    
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boardView.frontFace = brain.frontFace
        boardView.rightFace = brain.rightFace
        boardView.topFace = brain.topFace
        boardView.setNeedsDisplay()
        boardView.delegate = self
    } // read the msg in WeChat plz!
    
    func moveLayer(fbX: Int, fbY: Int, tbX: Int, tbY: Int) {
        if fbX == 0 && fbY == 0 && tbX == 0 && tbY == 2 {
            brain.rotateLeft()
        } else if fbX == 0 && fbY == 2 && tbX == 0 && tbY == 0{
            brain.rotateLeft()
            brain.rotateLeft()
            brain.rotateLeft()
        } else if fbX == 0 && fbY == 0 && tbX == 2 && tbY == 0{
            brain.rotateTop()
            brain.rotateTop()
            brain.rotateTop()
        } else if fbX == 2 && fbY == 0 && tbX == 0 && tbY == 0{
            brain.rotateTop()
        } else if fbX == 2 && fbY == 2 && tbX == 2 && tbY == 0{
            brain.rotateRight()
        } else if fbX == 2 && fbY == 0 && tbX == 2 && tbY == 2{
            brain.rotateRight()
            brain.rotateRight()
            brain.rotateRight()
        } else if fbX == 0 && fbY == 2 && tbX == 2 && tbY == 2{
            brain.rotateDown()
        } else if fbX == 2 && fbY == 2 && tbX == 0 && tbY == 2{
            brain.rotateDown()
            brain.rotateDown()
            brain.rotateDown()
        } else if fbX == 1 && fbY == 0 && tbX == 2 && tbY == 1 ||
            fbX == 2 && fbY == 1 && tbX == 1 && tbY == 2 ||
            fbX == 1 && fbY == 2 && tbX == 0 && tbY == 1 ||
            fbX == 0 && fbY == 1 && tbX == 1 && tbY == 0 {
            brain.rotateFront()
        } else if fbX == 2 && fbY == 1 && tbX == 1 && tbY == 0 ||
            fbX == 1 && fbY == 2 && tbX == 2 && tbY == 1 ||
            fbX == 0 && fbY == 1 && tbX == 1 && tbY == 2 ||
            fbX == 1 && fbY == 0 && tbY == 0 && tbX == 1 {
            brain.rotateFront()
            brain.rotateFront()
            brain.rotateFront()
        }
        
        update()
    }
    
    @IBAction func rotateDownClockwise(_ sender: Any) {
        brain.rotateDown()
        update()
    }
    
    @IBAction func rotateDownCounterclockwise(_ sender: Any) {
        brain.rotateDown()
        brain.rotateDown()
        brain.rotateDown()
        update()
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

