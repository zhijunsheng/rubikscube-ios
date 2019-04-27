import UIKit
class RubiksView : UIView {
    let originX  : CGFloat = 10
    let originY  : CGFloat = 150
    let side     : CGFloat = 50
    override func draw(_ rect: CGRect) {
        for i in 0..<3 {
            drawSquare(x: originX + side * CGFloat(i), y: originY + side * 0)
            drawSquare(x: originX + side * CGFloat(i), y: originY + side * 1)
            drawSquare(x: originX + side * CGFloat(i), y: originY + side * 2)
            drawParallelogram1(bottomLeftX: originX + side * CGFloat(i) + 0 * side / 4, bottomLeftY: originY)
            drawParallelogram1(bottomLeftX: originX + side * CGFloat(i) + 1 * side / 4, bottomLeftY: originY - side / 2)
            drawParallelogram1(bottomLeftX: originX + side * CGFloat(i) + 2 * side / 4, bottomLeftY: originY - side)
            drawParallelogram2(bottomLeftX: originX + side * 3, bottomLeftY: originY + side * CGFloat(i) + side)
            drawParallelogram2(bottomLeftX: originX + side / 4 + side * 3, bottomLeftY: originY + side / 2 + side * CGFloat(i))
            drawParallelogram2(bottomLeftX: originX + side / 2 + side * 3, bottomLeftY: originY + side * CGFloat(i))
        }
    }
    func drawParallelogram1(bottomLeftX: CGFloat, bottomLeftY: CGFloat) {
        let a = UIBezierPath()
        a.move(to: CGPoint(x: bottomLeftX, y: bottomLeftY))
        a.addLine(to: CGPoint(x: bottomLeftX + side, y: bottomLeftY))
        a.addLine(to: CGPoint(x: bottomLeftX + side + side / 4, y: bottomLeftY - side / 2))
        a.addLine(to: CGPoint(x: bottomLeftX + side + side / 4 - side, y: bottomLeftY - side / 2))
        a.close()
        a.lineWidth = 1
        a.stroke()
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setFill()
        a.fill()
    }
    func drawParallelogram2(bottomLeftX: CGFloat, bottomLeftY: CGFloat) {
        let s = UIBezierPath()
        s.move(to: CGPoint(x: bottomLeftX, y: bottomLeftY))
        s.addLine(to: CGPoint(x: bottomLeftX, y: bottomLeftY - side))
        s.addLine(to: CGPoint(x: bottomLeftX + side / 4, y: bottomLeftY - side / 2 - side))
        s.addLine(to: CGPoint(x: bottomLeftX + side / 4, y: bottomLeftY - side / 2 - side + side))
        s.close()
        s.lineWidth = 1
        s.stroke()
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
        s.fill()
    }
    func drawSquare(x: CGFloat, y: CGFloat) {
        let m14 = UIBezierPath()
        m14.move(to: CGPoint(x: x, y: y))
        m14.addLine(to: CGPoint(x: x + side, y: y))
        m14.addLine(to: CGPoint(x: x + side, y: y + side))
        m14.addLine(to: CGPoint(x: x, y: y + side))
        m14.close()
        m14.lineWidth = 1
        m14.stroke()
        
        #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1).setFill()
        m14.fill()
    }
}
