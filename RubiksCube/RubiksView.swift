import UIKit
class RubiksView : UIView {
    let originX  : CGFloat = 50
    let originY  : CGFloat = 250
    let side     : CGFloat = 150
    
    // tmp for testing
    var frontFace : [CubeColor] = []
    var topFace : [CubeColor] = []
    var rightFace : [CubeColor] = []
    
    
    override func draw(_ rect: CGRect) {
        front()
        top()
        right()
    }
    
    func front() {
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
    
    func top() {
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
    
    func right() {
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
    
    func drawRightParallelogram(x: Int, y: Int, color: CubeColor) {
        let ogX = originX + side * 3 + CGFloat(x) * (side / 2)
        let ogY = originY - CGFloat(x) * (side / 2) + CGFloat(y) * side
        
        let rightParallelogram = UIBezierPath()
        rightParallelogram.move(to: CGPoint(x: ogX, y: ogY))
        rightParallelogram.addLine(to: CGPoint(x: ogX + side / 2, y: ogY - side / 2))
        rightParallelogram.addLine(to: CGPoint(x: ogX + side / 2, y: ogY + side / 2))
        rightParallelogram.addLine(to: CGPoint(x: ogX, y: ogY + side))
        rightParallelogram.close()
        rightParallelogram.stroke()
        changeColor(cubeColor: color).setFill()
        rightParallelogram.fill()
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

