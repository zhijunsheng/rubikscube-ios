import UIKit

 class BoardView: UIView {
    let lineSide: CGFloat = 60
    let oigX: CGFloat = 85
    let oigY: CGFloat = 295
    override func draw(_ rect: CGRect) {
        for j in 0..<3 {
            for i in 0..<3 {
                drawSquare(x: oigX + CGFloat(i) * lineSide, y: oigY - CGFloat(j) * lineSide, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                drawParallelogram(x: oigX + CGFloat(i) * lineSide + CGFloat(j) * 30, y: oigY - CGFloat(j) * 30, color: #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1))
            }
        }
    }
    
    func drawSquare(x: CGFloat, y: CGFloat, color: UIColor) {
        let cS = UIBezierPath()
        cS.move(to: CGPoint(x: x, y: y))
        cS.addLine(to: CGPoint(x: x + lineSide, y: y))
        cS.addLine(to: CGPoint(x: x + lineSide, y: y + lineSide))
        cS.addLine(to: CGPoint(x: x, y: y + lineSide))
        cS.close()
        color.setFill()
        cS.fill()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        cS.stroke()
    }
    
    // parallelogram
    func drawParallelogram(x: CGFloat, y: CGFloat, color: UIColor) {
        let cP = UIBezierPath()
        cP.move(to: CGPoint(x: x, y: y - 2 * lineSide))
        cP.addLine(to: CGPoint(x: x + 30, y: y - 75 * 2))
        cP.addLine(to: CGPoint(x: x + 30 + lineSide, y: y - 75 * 2))
        cP.addLine(to: CGPoint(x: x + lineSide, y: y - lineSide * 2))
        cP.close()
        color.setFill()
        cP.fill()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        cP.stroke()
    }
 }
