import UIKit
class RubiksView : UIView {
    let originX  : CGFloat = 50
    let originY  : CGFloat = 250
    let side     : CGFloat = 150
    
    // tmp for testing
    let frontFace : [CubeColor] = [.red, .yellow, .blue,
                                   .green, .orange, .green,
                                   .red, .green, .blue]
    
    override func draw(_ rect: CGRect) {
        drawFrontFace()
        for i in 0..<3 {
            // drawSquare(col: 0, row: 0, color: .red)
//            drawSquare(x: originX + side * CGFloat(i), y: originY + side * 0)
//
//            drawSquare(x: originX + side * col, y: originY + side * row)
//            drawSquare(x: originX + side * CGFloat(i), y: originY + side * 2)
            drawParallelogram1(bottomLeftX: originX + side * CGFloat(i) + 0 * side / 4, bottomLeftY: originY)
            drawParallelogram1(bottomLeftX: originX + side * CGFloat(i) + 1 * side / 4, bottomLeftY: originY - side / 2)
            drawParallelogram1(bottomLeftX: originX + side * CGFloat(i) + 2 * side / 4, bottomLeftY: originY - side)
            drawParallelogram2(bottomLeftX: originX + side * 3, bottomLeftY: originY + side * CGFloat(i) + side)
            drawParallelogram2(bottomLeftX: originX + side / 4 + side * 3, bottomLeftY: originY + side / 2 + side * CGFloat(i))
            drawParallelogram2(bottomLeftX: originX + side / 2 + side * 3, bottomLeftY: originY + side * CGFloat(i))
        }
    }
    func drawFrontFace() {
        drawFrontFaceSquare(col: 0, row: 0, color: frontFace[0])
        drawFrontFaceSquare(col: 1, row: 0, color: frontFace[1])
        drawFrontFaceSquare(col: 2, row: 0, color: frontFace[2])
        drawFrontFaceSquare(col: 0, row: 1, color: frontFace[3])
        drawFrontFaceSquare(col: 1, row: 1, color: frontFace[4])
        drawFrontFaceSquare(col: 2, row: 1, color: frontFace[5])
        drawFrontFaceSquare(col: 0, row: 2, color: frontFace[6])
        drawFrontFaceSquare(col: 1, row: 2, color: frontFace[7])
        drawFrontFaceSquare(col: 2, row: 2, color: frontFace[8])
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
    
    func drawFrontFaceSquare(col: Int, row: Int, color: CubeColor) {
        var actualColor: UIColor
        
        switch color {
        case .red:
            actualColor = #colorLiteral(red: 0.7460491061, green: 0.1685091257, blue: 0.1515918076, alpha: 1)
        case .orange:
            actualColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        case .blue:
            actualColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        case .green:
            actualColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        case .yellow:
            actualColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        case .white:
            actualColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        drawSquare(x: originX + side * CGFloat(col), y: originY + side * CGFloat(row), color: actualColor)
    }
    
    func drawSquare(x: CGFloat, y: CGFloat, color: UIColor) {
        let m14 = UIBezierPath()
        m14.move(to: CGPoint(x: x, y: y))
        m14.addLine(to: CGPoint(x: x + side, y: y))
        m14.addLine(to: CGPoint(x: x + side, y: y + side))
        m14.addLine(to: CGPoint(x: x, y: y + side))
        m14.close()
        m14.lineWidth = 1
        m14.stroke()
        
        color.setFill()
        m14.fill()
    }
}
