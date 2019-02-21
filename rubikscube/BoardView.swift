import UIKit

class BoardView: UIView {
    let originX: CGFloat = 50
    let originY: CGFloat = 150
    let side: CGFloat = 50
    let randomThingThatIDontKnowHowToName: CGFloat = 25

    override func draw(_ rect: CGRect) {

        for i in 0..<3 {
            drawSquare(topLeftX: originX + CGFloat(i) * side, topLeftY: originY)
            drawSquare(topLeftX: originX + CGFloat(i) * side, topLeftY: originY + side)
            drawSquare(topLeftX: originX + CGFloat(i) * side, topLeftY: originY + side * 2)
        }
        for i in 0..<3 {
            drawParallelogram(bottomLeftX: originX + CGFloat(i) * side, bottomLeftY: originY)
            drawParallelogram(bottomLeftX: originX + CGFloat(i) * side + randomThingThatIDontKnowHowToName, bottomLeftY: originY - randomThingThatIDontKnowHowToName)
            drawParallelogram(bottomLeftX: originX + CGFloat(i) * side + randomThingThatIDontKnowHowToName * 2, bottomLeftY: originY - randomThingThatIDontKnowHowToName * 2)
        }
        drawParallelogram2(cornerLeftX: originX + side * 3, cornerLeftY: originY)
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
    
    
    func drawParallelogram(bottomLeftX: CGFloat, bottomLeftY: CGFloat){
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bottomLeftX, y: bottomLeftY))
        path.addLine(to: CGPoint(x: bottomLeftX + 25, y: bottomLeftY - 25))
        path.addLine(to: CGPoint(x: bottomLeftX + side + 25, y: bottomLeftY - 25))
        path.addLine(to: CGPoint(x: bottomLeftX + side, y: bottomLeftY))
        path.close()
        
        #colorLiteral(red: 0.9076325292, green: 1, blue: 0.1667297767, alpha: 1).setFill()
        path.fill()
        
        
        path.stroke()
    }
    
    func drawParallelogram2(cornerLeftX: CGFloat, cornerLeftY: CGFloat){
        let path = UIBezierPath()
        path.move(to: CGPoint(x: cornerLeftX, y: cornerLeftY))
        path.addLine(to: CGPoint(x: cornerLeftX, y: cornerLeftY + side))
        path.addLine(to: CGPoint(x: cornerLeftX + side, y: cornerLeftY + side))
        path.addLine(to: CGPoint(x: cornerLeftX + side, y: cornerLeftY))
        path.close()
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
        path.fill()
        
        
        path.stroke()
    }
    
}



