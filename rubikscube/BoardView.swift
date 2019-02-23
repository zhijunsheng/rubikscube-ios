import UIKit

 class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        drawSquare()
        
    }
    
    func drawSquare() {
        let cube = UIBezierPath()
        cube.move(to: CGPoint(x: 35, y: 35))
        cube.addLine(to: CGPoint(x: 75, y: 35))
        cube.addLine(to: CGPoint(x: 75, y: 75))
        cube.addLine(to: CGPoint(x: 35, y: 75))
        cube.close()
        cube.stroke()
    }
 }
