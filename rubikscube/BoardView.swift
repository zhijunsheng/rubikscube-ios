import UIKit

 class BoardView: UIView {
    let lineSide: CGFloat = 40
    let oigX: CGFloat = 75
    let oigY: CGFloat = 115
    
    override func draw(_ rect: CGRect) {
        for i in 0..<3 {
            drawSquare(x: oigX + CGFloat(i) * lineSide, y: oigY - lineSide, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }
        
//        drawSquare(x: oigX, y: oigY - lineSide, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
//        drawSquare(x: oigX + lineSide, y: oigY - lineSide, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        
    }
    
    func drawSquare(x: CGFloat, y: CGFloat, color: UIColor) {
        let cube = UIBezierPath()
        cube.move(to: CGPoint(x: x, y: y))
        cube.addLine(to: CGPoint(x: x + lineSide, y: y))
        cube.addLine(to: CGPoint(x: x + lineSide, y: y + lineSide))
        cube.addLine(to: CGPoint(x: x, y: y + lineSide))
        cube.close()
        color.setFill()
        cube.fill()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        cube.stroke()
    }
 }
