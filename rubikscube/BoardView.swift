
import UIKit

 class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        
        // squares
        
        drawSquare(originX: 150, originY: 290, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSquare(originX: 150 + 90, originY: 290, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSquare(originX: 150 + 90 + 90, originY: 290, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        drawSquare(originX: 150, originY: 290 + 90, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSquare(originX: 150 + 90, originY: 290 + 90, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSquare(originX: 150 + 90 + 90, originY: 290 + 90, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        drawSquare(originX: 150, originY: 290 + 90 + 90, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSquare(originX: 150 + 90, originY: 290 + 90 + 90, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSquare(originX: 150 + 90 + 90, originY: 290 + 90 + 90, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        // parallelograms
        
        drawParallelogram(originX: 150, originY: 250, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawParallelogram(originX: 150 + 90, originY: 250, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawParallelogram(originX: 150 + 90 + 90, originY: 250, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        drawParallelogram(originX: 150 + 20, originY: 250 - 40, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawParallelogram(originX: 150 + 90 + 20, originY: 250 - 40, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawParallelogram(originX: 150 + 90 + 90 + 20, originY: 250 - 40, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        drawParallelogram(originX: 150 + 20 + 20, originY: 250 - 40 - 40, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawParallelogram(originX: 150 + 90 + 20 + 20, originY: 250 - 40 - 40, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawParallelogram(originX: 150 + 90 + 90 + 20 + 20, originY: 250 - 40 - 40, cellSide: 90, lineWidth: 3, fillColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    }
    
    func drawParallelogram(originX: CGFloat, originY: CGFloat, cellSide: CGFloat, lineWidth: CGFloat, fillColor: UIColor, strokeColor: UIColor) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: originX + 20, y: originY))
        pencil.addLine(to: CGPoint(x: originX + cellSide + 20, y: originY))
        pencil.addLine(to: CGPoint(x: originX + cellSide, y: originY + cellSide - 50))
        pencil.addLine(to: CGPoint(x: originX, y: originY + cellSide - 50))
        pencil.close()
        
        pencil.lineWidth = lineWidth
        fillColor.setFill()
        pencil.fill()
        strokeColor.setStroke()
        pencil.stroke()
    }

    func drawSquare(originX: CGFloat, originY: CGFloat, cellSide: CGFloat, lineWidth: CGFloat, fillColor: UIColor, strokeColor: UIColor) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: originX, y: originY))
        pencil.addLine(to: CGPoint(x: originX + cellSide, y: originY))
        pencil.addLine(to: CGPoint(x: originX + cellSide, y: originY + cellSide))
        pencil.addLine(to: CGPoint(x: originX, y: originY + cellSide))
        
        pencil.lineWidth = lineWidth
        fillColor.setFill()
        pencil.fill()
        strokeColor.setStroke()
        pencil.stroke()
    }
    
 }
