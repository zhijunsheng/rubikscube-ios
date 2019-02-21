import UIKit

class RubiksView : UIView {
    let originX  : CGFloat = 10
    let originY  : CGFloat = 85
    let side     : CGFloat = 50
    let gap      : CGFloat = 5

    override func draw(_ rect: CGRect) {
        
        drawSquares()
    
    }
    
    func drawSquares() {
        
        for f in 0..<3 {
            for i in 0..<3 {
                drawRoundSquare(x: originX + gap + side * CGFloat(i), y: originY + gap + side * CGFloat(f))
            }
        }
    }
    
    func drawRoundSquare(x: CGFloat, y: CGFloat) {
        let m14 = UIBezierPath()
        m14.move(to: CGPoint(x: x, y: y))
        m14.addLine(to: CGPoint(x: x + side, y: y))
        m14.addLine(to: CGPoint(x: x + side, y: y + side))
        m14.addLine(to: CGPoint(x: x, y: y + side))
        m14.close()
        m14.stroke()
        
        let n15 = UIBezierPath(roundedRect: CGRect(x: x, y: y, width: side - gap * 2, height: side - gap * 2), cornerRadius: 8)
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setFill()
        n15.fill()
    }
    
}
