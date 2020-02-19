import UIKit

class BoardView: UIView {
    let lineSide: CGFloat = 120
    var oigX: CGFloat = 85
    var oigY: CGFloat = 295
    
    let frontFace: [CubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    let topFace: [CubeColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    
    override func draw(_ rect: CGRect) {
        oigX = (bounds.width - (3 * lineSide + 3 * lineSide / 2)) / 2
        oigY = oigX + 3 * lineSide / 2
        
        faceBox()
        
        let targetDot = UIBezierPath(arcCenter: CGPoint(x: oigX, y: oigY), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1).setFill()
        targetDot.fill()
        targetDot.stroke()
        
    }
    
    func faceBox() {
        faceFront()
 //       wrongFaceTop()
        wrongFaceRight()
    }
    
    func wrongFaceRight() {
        drawParallelogram2(x: oigX + 3 * lineSide, y: oigY + 2 * lineSide, color: #colorLiteral(red: 1, green: 0.9969701477, blue: 0.2513433961, alpha: 1))
        drawParallelogram2(x: oigX + 3 * lineSide, y: oigY + 1 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawParallelogram2(x: oigX + 3 * lineSide, y: oigY, color: #colorLiteral(red: 1, green: 0.9969701477, blue: 0.2513433961, alpha: 1))
        
        drawParallelogram2(x: oigX + 3.5 * lineSide, y: oigY + 1.5 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawParallelogram2(x: oigX + 3.5 * lineSide, y: oigY + 0.5 * lineSide, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        drawParallelogram2(x: oigX + 3.5 * lineSide, y: oigY - 0.5 * lineSide, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        
        drawParallelogram2(x: oigX + 4 * lineSide, y: oigY + 1 * lineSide, color: #colorLiteral(red: 0.9647058824, green: 1, blue: 0, alpha: 1))
        drawParallelogram2(x: oigX + 4 * lineSide, y: oigY, color: #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1))
        drawParallelogram2(x: oigX + 4 * lineSide, y: oigY - 1 * lineSide, color: #colorLiteral(red: 0.9647058824, green: 1, blue: 0, alpha: 1))
    }
    
    func wrongFaceTop() {
        drawSquareTop(col: 0, row: 2, color: topFace[0])
        drawSquareTop(col: 1, row: 2, color: topFace[1])
        drawSquareTop(col: 2, row: 2, color: topFace[2])
        
        drawSquareTop(col: 0, row: 1, color: topFace[3])
        drawSquareTop(col: 1, row: 1, color: topFace[4])
        drawSquareTop(col: 2, row: 1, color: topFace[5])

        
        drawSquareTop(col: 0, row: 0, color: topFace[6])
        drawSquareTop(col: 1, row: 0, color: topFace[7])
        drawSquareTop(col: 2, row: 0, color: topFace[8])
        
        
    }
    
    func drawSquareTop(col: Int, row: Int, color: CubeColor) {
        var acturalColor: UIColor
        
        switch color {
        case .red:
            acturalColor = #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1)
        case .yellow:
            acturalColor = #colorLiteral(red: 1, green: 0.9969701477, blue: 0.2513433961, alpha: 1)
        case .blue:
            acturalColor = #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1)
        case .green:
            acturalColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        case .orange:
            acturalColor = #colorLiteral(red: 0.9960784314, green: 0.4015842014, blue: 0, alpha: 1)
        case .white:
            acturalColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
        
        drawParallelogram1(x: oigX + CGFloat(col) * lineSide, y: oigY - CGFloat(row) * lineSide, color: acturalColor)
    }
    
    func faceFront() {
        drawSquareFront(col: 0, row: 0, color: frontFace[0])
        drawSquareFront(col: 1, row: 0, color: frontFace[1])
        drawSquareFront(col: 2, row: 0, color: frontFace[2])
        
        drawSquareFront(col: 0, row: 1, color: frontFace[3])
        drawSquareFront(col: 1, row: 1, color: frontFace[4])
        drawSquareFront(col: 2, row: 1, color: frontFace[5])
        
        drawSquareFront(col: 0, row: 2, color: frontFace[6])
        drawSquareFront(col: 1, row: 2, color: frontFace[7])
        drawSquareFront(col: 2, row: 2, color: frontFace[8])
    }
    
    func drawSquareFront(col: Int, row: Int, color: CubeColor) {
        var acturalColor: UIColor
        
        switch color {
        case .red:
            acturalColor = #colorLiteral(red: 1, green: 0, blue: 0.2113397249, alpha: 1)
        case .yellow:
            acturalColor = #colorLiteral(red: 1, green: 0.9969701477, blue: 0.2513433961, alpha: 1)
        case .blue:
            acturalColor = #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1)
        case .green:
            acturalColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        case .orange:
            acturalColor = #colorLiteral(red: 0.9960784314, green: 0.4015842014, blue: 0, alpha: 1)
        case .white:
            acturalColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
        
        drawSquare(x: oigX + CGFloat(col) * lineSide, y: oigY + CGFloat(row) * lineSide, color: acturalColor)
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
    
    func drawParallelogram1(x: CGFloat, y: CGFloat, color: UIColor) {
        let cP1 = UIBezierPath()
        cP1.move(to: CGPoint(x: x, y: y))
        cP1.addLine(to: CGPoint(x: x + lineSide / 2, y: y - lineSide / 2))
        cP1.addLine(to: CGPoint(x: x + lineSide / 2 + lineSide, y: y - lineSide / 2))
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
        cP2.addLine(to: CGPoint(x: x + lineSide / 2, y: y - lineSide / 2))
        cP2.addLine(to: CGPoint(x: x + lineSide / 2, y: y + lineSide - lineSide / 2))
        cP2.addLine(to: CGPoint(x: x, y: y + lineSide))
        cP2.close()
        color.setFill()
        cP2.fill()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        cP2.stroke()
    }
}
