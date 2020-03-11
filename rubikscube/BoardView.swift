import UIKit

class BoardView: UIView {
    let lineSide: CGFloat = 120
    var oigX: CGFloat = 85
    var oigY: CGFloat = 295
    
    let frontFace: [CubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    let rightFace: [CubeColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    let topFace: [CubeColor] = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
    
    override func draw(_ rect: CGRect) {
        drawFrontFace()
        drawRightFace()
        drawTopface()
    }
    
    func drawFrontFace() {
        drawSquare(x: 0, y: 0, color: frontFace[0])
        drawSquare(x: 1, y: 0, color: frontFace[1])
        drawSquare(x: 2, y: 0, color: frontFace[2])
        
        drawSquare(x: 0, y: 1, color: frontFace[3])
        drawSquare(x: 1, y: 1, color: frontFace[4])
        drawSquare(x: 2, y: 1, color: frontFace[5])
        
        drawSquare(x: 0, y: 2, color: frontFace[6])
        drawSquare(x: 1, y: 2, color: frontFace[7])
        drawSquare(x: 2, y: 2, color: frontFace[8])
    }
    
    func drawRightFace() {
        drawRightParallelogram(x: 0, y: 0, color: rightFace[0])
        drawRightParallelogram(x: 1, y: 0, color: rightFace[1])
        drawRightParallelogram(x: 2, y: 0, color: rightFace[2])
        
        drawRightParallelogram(x: 0, y: 1, color: rightFace[3])
        drawRightParallelogram(x: 1, y: 1, color: rightFace[4])
        drawRightParallelogram(x: 2, y: 1, color: rightFace[5])
        
        drawRightParallelogram(x: 0, y: 2, color: rightFace[6])
        drawRightParallelogram(x: 1, y: 2, color: rightFace[7])
        drawRightParallelogram(x: 2, y: 2, color: rightFace[8])
    }
   
    func drawSquare(x: Int, y: Int, color: CubeColor) {
        let cube0 = UIBezierPath(rect: CGRect(x: oigX + CGFloat(x) * lineSide, y: oigY + CGFloat(y) * lineSide, width: lineSide, height: lineSide))
        changingColor(color: color).setFill()
        cube0.fill()
        cube0.stroke()
    }
 
    func drawRightParallelogram(x: Int, y: Int, color: CubeColor) {
        let wrongPointX1 = oigX + 3 * lineSide + CGFloat(x) / 2 * lineSide
        let wrongPointY1 = oigY - CGFloat(x) * lineSide / 2 + CGFloat(y) * lineSide
        
        let cube1 = UIBezierPath()
        cube1.move(to: CGPoint(x: wrongPointX1, y: wrongPointY1))
        cube1.addLine(to: CGPoint(x: wrongPointX1 + 0.5 * lineSide, y: wrongPointY1 - 0.5 * lineSide))
        cube1.addLine(to: CGPoint(x: wrongPointX1 + 0.5 * lineSide, y: wrongPointY1 + 0.5 * lineSide))
        cube1.addLine(to: CGPoint(x: wrongPointX1, y: wrongPointY1 + lineSide))
        cube1.close()
        changingColor(color: color).setFill()
        cube1.fill()
        cube1.stroke()
    }
    
    func drawTopface() {
        drawTopParallelogram(x: 0, y: 0, color: topFace[0])
        drawTopParallelogram(x: 1, y: 0, color: topFace[1])
        drawTopParallelogram(x: 2, y: 0, color: topFace[2])

        drawTopParallelogram(x: 0, y: 1, color: topFace[3])
        drawTopParallelogram(x: 1, y: 1, color: topFace[4])
        drawTopParallelogram(x: 2, y: 1, color: topFace[5])
        
        drawTopParallelogram(x: 0, y: 2, color: topFace[6])
        drawTopParallelogram(x: 1, y: 2, color: topFace[7])
        drawTopParallelogram(x: 2, y: 2, color: topFace[8])
    }
    
    func drawTopParallelogram(x: Int, y: Int, color: CubeColor) {
        let wrongPointX0 = oigX + lineSide + CGFloat(x) * lineSide - CGFloat(y) * lineSide / 2
        let wrongPointY0 = oigY - lineSide + CGFloat(y) * lineSide / 2
        
        let cube2 = UIBezierPath()
        cube2.move(to: CGPoint(x: wrongPointX0, y: wrongPointY0))
        cube2.addLine(to: CGPoint(x: wrongPointX0 + lineSide / 2, y: wrongPointY0 - lineSide / 2))
        cube2.addLine(to: CGPoint(x: wrongPointX0 + lineSide + lineSide / 2, y: wrongPointY0 - lineSide / 2))
        cube2.addLine(to: CGPoint(x: wrongPointX0 + lineSide, y: wrongPointY0))
        cube2.close()
        changingColor(color: color).setFill()
        cube2.fill()
        cube2.stroke()
    }
    
    func changingColor(color: CubeColor) -> UIColor {
        let realColor: UIColor
        
        switch color {
        case .red:
            realColor = #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1)
        case .yellow:
            realColor = #colorLiteral(red: 1, green: 0.9969701477, blue: 0.2513433961, alpha: 1)
        case .blue:
            realColor = #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1)
        case .green:
            realColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        case .orange:
            realColor = #colorLiteral(red: 0.9960784314, green: 0.4015842014, blue: 0, alpha: 1)
        case .white:
            realColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
        return realColor
    }

}
