
import UIKit

 class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        drawSquare(originX: 50, originY: 0, cellSide: 90)
        drawSquare(originX: 150, originY: 290, cellSide: 90)
    }
    
    func drawSquare(originX: CGFloat, originY: CGFloat, cellSide: CGFloat) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: originX, y: originY))
        pencil.addLine(to: CGPoint(x: originX + cellSide, y: originY))
        pencil.addLine(to: CGPoint(x: originX + cellSide, y: originY + cellSide))
        pencil.addLine(to: CGPoint(x: originX, y: originY + cellSide))
        pencil.close()
        
        pencil.stroke()
    }
    
 }
