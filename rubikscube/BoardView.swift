
import UIKit

 class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        drawSquare(originX: 50, originY: 0, cellSide: 90, lineWidth: 5, fillColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), strokeColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1))
        drawSquare(originX: 150, originY: 290, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), strokeColor: #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1))
    }
    
    // fillColor, strokeColor : UIColor
    func drawSquare(originX: CGFloat, originY: CGFloat, cellSide: CGFloat, lineWidth: CGFloat, fillColor: UIColor, strokeColor: UIColor) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: originX, y: originY))
        pencil.addLine(to: CGPoint(x: originX + cellSide, y: originY))
        pencil.addLine(to: CGPoint(x: originX + cellSide, y: originY + cellSide))
        pencil.addLine(to: CGPoint(x: originX, y: originY + cellSide))
        pencil.close()
        
        pencil.lineWidth = lineWidth
        fillColor.setFill()
        pencil.fill()
        strokeColor.setStroke()
        pencil.stroke()
    }
    
 }
