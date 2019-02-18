import UIKit

class BoardView: UIView {
    let originX: CGFloat = 50
    let originY: CGFloat = 150
    let side: CGFloat = 50
   
    override func draw(_ rect: CGRect) {

        for i in 0..<3 {
            drawSquare(topLeftX: originX + CGFloat(i) * side, topLeftY: originY)
            drawSquare(topLeftX: originX + CGFloat(i) * side, topLeftY: originY + side)
            drawSquare(topLeftX: originX + CGFloat(i) * side, topLeftY: originY + side * 2)
        }
    }
    
    func drawSquare(topLeftX: CGFloat, topLeftY: CGFloat) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: topLeftX, y: topLeftY))
        path.addLine(to: CGPoint(x: topLeftX, y: topLeftY + side))
        path.addLine(to: CGPoint(x: topLeftX + side, y: topLeftY + side))
        path.addLine(to: CGPoint(x: topLeftX + side, y: topLeftY))
        path.close()
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        path.fill()
        
        
        path.stroke()
    }
}
