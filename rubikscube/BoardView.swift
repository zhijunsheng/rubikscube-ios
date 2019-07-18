import UIKit

class BoardView: UIView {
    let lineSide: CGFloat = 60
    var oigX: CGFloat = 85
    var oigY: CGFloat = 295
    
    override func draw(_ rect: CGRect) {
        oigX = (bounds.width - (3 * lineSide + 3 * lineSide / 2)) / 2
        oigY = oigX + (2 * lineSide + 3 * lineSide / 2)
        
        wrongFaceBox()
        
    }
    
    func wrongFaceBox() {
        wrongFaceFront()
        wrongFaceTop()
        wrongFaceRight()
    }
    
    func wrongFaceRight() {
        drawParallelogram2(x: oigX + 3 * lineSide, y: oigY - 0 * lineSide, color: #colorLiteral(red: 1, green: 0.9969701477, blue: 0.2513433961, alpha: 1))
        drawParallelogram2(x: oigX + 3 * lineSide, y: oigY - 1 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawParallelogram2(x: oigX + 3 * lineSide, y: oigY - 2 * lineSide, color: #colorLiteral(red: 1, green: 0.9969701477, blue: 0.2513433961, alpha: 1))
        
        drawParallelogram2(x: oigX + 3.5 * lineSide, y: oigY - 0.5 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawParallelogram2(x: oigX + 3.5 * lineSide, y: oigY - 1.5 * lineSide, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        drawParallelogram2(x: oigX + 3.5 * lineSide, y: oigY - 2.5 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        
        drawParallelogram2(x: oigX + 4 * lineSide, y: oigY - 1 * lineSide, color: #colorLiteral(red: 0.9647058824, green: 1, blue: 0, alpha: 1))
        drawParallelogram2(x: oigX + 4 * lineSide, y: oigY - 2 * lineSide, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        drawParallelogram2(x: oigX + 4 * lineSide, y: oigY - 3 * lineSide, color: #colorLiteral(red: 0.9647058824, green: 1, blue: 0, alpha: 1))
    }
    
    func wrongFaceTop() {
        drawParallelogram1(x: oigX + 0 * lineSide, y: oigY - 2 * lineSide, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        drawParallelogram1(x: oigX + 1 * lineSide, y: oigY - 2 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawParallelogram1(x: oigX + 2 * lineSide, y: oigY - 2 * lineSide, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        
        drawParallelogram1(x: oigX + 0 * lineSide + lineSide / 2, y: oigY - 2 * lineSide - lineSide / 2, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        drawParallelogram1(x: oigX + 1 * lineSide + lineSide / 2, y: oigY - 2 * lineSide - lineSide / 2, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        drawParallelogram1(x: oigX + 2 * lineSide + lineSide / 2, y: oigY - 2 * lineSide - lineSide / 2, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        
        drawParallelogram1(x: oigX + 0 * lineSide + lineSide, y: oigY - 2 * lineSide - lineSide, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        drawParallelogram1(x: oigX + 1 * lineSide + lineSide, y: oigY - 2 * lineSide - lineSide, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        drawParallelogram1(x: oigX + 2 * lineSide + lineSide, y: oigY - 2 * lineSide - lineSide, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    }
    
    func wrongFaceFront() {
        drawSquare(x: oigX + 0 * lineSide , y: oigY - 2 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawSquare(x: oigX + 1 * lineSide , y: oigY - 2 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawSquare(x: oigX + 2 * lineSide , y: oigY - 2 * lineSide, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        
        drawSquare(x: oigX + 0 * lineSide , y: oigY - 1 * lineSide, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        drawSquare(x: oigX + 1 * lineSide , y: oigY - 1 * lineSide, color: #colorLiteral(red: 0.9843137255, green: 1, blue: 0, alpha: 1))
        drawSquare(x: oigX + 2 * lineSide , y: oigY - 1 * lineSide, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        
        drawSquare(x: oigX + 0 * lineSide , y: oigY - 0 * lineSide, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSquare(x: oigX + 1 * lineSide , y: oigY - 0 * lineSide, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSquare(x: oigX + 2 * lineSide , y: oigY - 0 * lineSide, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
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
        #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1).setStroke()
        cS.stroke()
    }
    
    // parallelogram
    func drawParallelogram1(x: CGFloat, y: CGFloat, color: UIColor) {
        let cP1 = UIBezierPath()
        cP1.move(to: CGPoint(x: x, y: y))
        cP1.addLine(to: CGPoint(x: x + 30, y: y - 30))
        cP1.addLine(to: CGPoint(x: x + 30 + lineSide, y: y - 30))
        cP1.addLine(to: CGPoint(x: x + lineSide, y: y))
        cP1.close()
        color.setFill()
        cP1.fill()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        cP1.stroke()
    }
    
    func drawParallelogram2(x: CGFloat,y: CGFloat,color: UIColor) {
        let cP2 = UIBezierPath()
        cP2.move(to: CGPoint(x: x, y: y))
        cP2.addLine(to: CGPoint(x: x + 30, y: y - 30))
        cP2.addLine(to: CGPoint(x: x + 30, y: y + lineSide - 30))
        cP2.addLine(to: CGPoint(x: x, y: y + lineSide))
        cP2.close()
        color.setFill()
        cP2.fill()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        cP2.stroke()
    }
}
