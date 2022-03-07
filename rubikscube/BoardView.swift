import UIKit

class BoardView: UIView {
    
    let cubeX: CGFloat = 150
    let cubeY: CGFloat = 250
    let cellSide: CGFloat = 100
    
    override func draw(_ rect: CGRect) {
        drawFrontFace()
        
    }
    
    func drawFrontFace() {
        let pen = UIBezierPath()
        
        for i in 0..<4 {
            pen.move(to: CGPoint(x: cubeX, y: cubeY + CGFloat(i) * cellSide))
            pen.addLine(to: CGPoint(x: cubeX + 3 * cellSide, y: cubeY + CGFloat(i) * cellSide))
        }
        
        for i in 0..<4 {
            pen.move(to: CGPoint(x: cubeX + CGFloat(i) * cellSide, y: cubeY))
            pen.addLine(to: CGPoint(x: cubeX + CGFloat(i) * cellSide, y: cubeY + 3 * cellSide))
        }
        pen.stroke()
    }
 }
