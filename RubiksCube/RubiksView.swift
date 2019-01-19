

import UIKit

class RubiksView: UIView {
    let originX : CGFloat = 10
    let originY : CGFloat = 10
    let side    : CGFloat = 50
    let gap     : CGFloat = 5
    
    
    override func draw(_ rect: CGRect) {
        
        drawSquare()
        drawSquare()
    
    }
    func drawSquare() {
        let m14 = UIBezierPath()
        // 1
        // （1）
        m14.move(to: CGPoint(x: originX, y: originY))
        m14.addLine(to: CGPoint(x: originX + side, y: originY))
        m14.addLine(to: CGPoint(x: originX + side, y: originY + side))
        m14.addLine(to: CGPoint(x: originX, y: originY + side))
        m14.close()
        // （2）
        m14.move(to: CGPoint(x: originX + side, y: originY))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY + side))
        m14.addLine(to: CGPoint(x: originX + side, y: originY + side))
        // （3）
        m14.move(to: CGPoint(x: originX + side * 2, y: originY))
        m14.addLine(to: CGPoint(x: originX + side * 3, y: originY))
        m14.addLine(to: CGPoint(x: originX + side * 3, y: originY + side))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY + side))
        // 2
        // （1）
        m14.move(to: CGPoint(x: originX, y: originY + side))
        m14.addLine(to: CGPoint(x: originX + side, y: originY + side))
        m14.addLine(to: CGPoint(x: originX + side, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX, y: originY + side * 2))
        m14.close()
        // （2）
        m14.move(to: CGPoint(x: originX + side, y: originY + side))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY + side))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX + side, y: originY + side * 2))
        // （3）
        m14.move(to: CGPoint(x: originX + side * 2, y: originY + side))
        m14.addLine(to: CGPoint(x: originX + side * 3, y: originY + side))
        m14.addLine(to: CGPoint(x: originX + side * 3, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY + side * 2))
        // 3
        // （1）
        m14.move(to: CGPoint(x: originX, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX + side, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX + side, y: originY + side * 3))
        m14.addLine(to: CGPoint(x: originX, y: originY + side * 3))
        m14.close()
        // （2）
        m14.move(to: CGPoint(x: originX + side, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY + side * 3))
        m14.addLine(to: CGPoint(x: originX + side, y: originY + side * 3))
        // （3）
        m14.move(to: CGPoint(x: originX + side * 2, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX + side * 3, y: originY + side * 2))
        m14.addLine(to: CGPoint(x: originX + side * 3, y: originY + side * 3))
        m14.addLine(to: CGPoint(x: originX + side * 2, y: originY + side * 3))
        
        m14.close()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        m14.stroke()
        
        let n15 = UIBezierPath()
        n15.move(to: CGPoint(x: originX + gap, y: originY + gap))
        n15.addLine(to: CGPoint(x: originX + gap, y: originY + side - gap))
        n15.addLine(to: CGPoint(x: originX + side - gap, y: originY + side - gap))
        n15.addLine(to: CGPoint(x: originX + side - gap, y: originY + gap))
        n15.close()
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        n15.fill()
    }
    

    }


