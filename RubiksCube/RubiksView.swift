import UIKit
class RubiksView : UIView {
    let originX  : CGFloat = 50
    let originY  : CGFloat = 250
    let side     : CGFloat = 150
    
    // tmp for testing
    let frontFace : [CubeColor] = [.red, .yellow, .blue,
                                   .green, .orange, .green,
                                   .red, .green, .blue]
    let topFace : [CubeColor] = [.orange, .white, .blue,
                                 .orange, .green, .red,
                                 .white, .blue, .green]
    
    override func draw(_ rect: CGRect) {
        drawTopParallelogram(x: 0, y: 0, color: topFace[0])
        drawTopParallelogram(x: 1, y: 0, color: topFace[1])
        drawTopParallelogram(x: 2, y: 0, color: topFace[2])
        drawTopParallelogram(x: 0, y: 1, color: topFace[3])
        drawTopParallelogram(x: 1, y: 1, color: topFace[4])
        drawTopParallelogram(x: 2, y: 1, color: topFace[5])
        drawTopParallelogram(x: 0, y: 2, color: topFace[6])
        drawTopParallelogram(x: 1, y: 2, color: topFace[7])
        drawTopParallelogram(x: 2, y: 2, color: topFace[8])
        
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
    

    
    func drawSquare(x: Int, y: Int, color: CubeColor) {
        let square = UIBezierPath(rect: CGRect(x: originX + CGFloat(x) * side, y: originY + CGFloat(y) * side, width: side, height: side))
        square.stroke()
        changeColor(cubeColor: color).setFill()
        square.fill()
    }
    
    func drawTopParallelogram(x: Int, y: Int, color: CubeColor) {
        let orgX = originX + side * CGFloat(x + 1) - CGFloat(y) * (side / 2)
        let orgY = originY - side + CGFloat(y) * (side / 2)
        
        
        let topParallelogram = UIBezierPath()
        topParallelogram.move(to: CGPoint(x: orgX, y: orgY))
        topParallelogram.addLine(to: CGPoint(x: orgX + side / 2, y: orgY - side / 2))
        topParallelogram.addLine(to: CGPoint(x: orgX + side * 3 / 2, y: orgY - side / 2))
        topParallelogram.addLine(to: CGPoint(x: orgX + side, y: orgY))
        topParallelogram.close()
        topParallelogram.stroke()
        changeColor(cubeColor: color).setFill()
        topParallelogram.fill()
    }
    
    func changeColor(cubeColor: CubeColor) -> UIColor {
        switch cubeColor {
        case .red:
            return .red
        case .orange:
            return .orange
        case .blue:
            return .blue
        case .green:
            return .green
        case .yellow:
            return .yellow
        case .white:
            return .white
        }
    }
    
    
}

