//
//  RBView.swift
//  rubikscube
//
//  Created by Felix Lo on 2021-03-27.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit


class RBView: UIView {
    var delegate: RCDelegate? = nil
    var middle = CGPoint(x: 0, y: 0)
    var h: CGFloat = 0
    var b: CGFloat = 0
    let hypo: CGFloat = 300
    var fromCol: Int = 0
    var fromRow: Int = 0
    
    override func draw(_ rect: CGRect) {
        middle = CGPoint(x: bounds.width/2, y: bounds.height/2)
        h = sin(30/180 * CGFloat.pi) * hypo
        b = cos(30/180 * CGFloat.pi) * hypo
        
        drawFaces()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let a = touches.first!
        let location = a.location(in: self)
        fromCol = xToCol(x: location.x)
        fromRow = yToRow(x: location.x, y: location.y)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let a = touches.first!
        let location = a.location(in: self)
        let col = xToCol(x: location.x)
        let row = yToRow(x: location.x, y: location.y)
        
        delegate?.rotate(fromCol: fromCol, fromRow: fromRow, toCol: col, toRow: row)
    }
    
    func drawRFCell(color: UIColor, index: Int) {
        let path = UIBezierPath()
        let col = index % 3
        let row = index / 3
        let anchorPointX: CGFloat = middle.x + CGFloat(col) * b/3
        let anchorPointY: CGFloat = middle.y + CGFloat(row) * hypo/3 - CGFloat(col) * h/3
        
        let anchorPoint = CGPoint(x: anchorPointX, y: anchorPointY)
        
        path.move(to: anchorPoint)
        path.addLine(to: CGPoint(x: anchorPoint.x + b/3, y: anchorPoint.y - h/3))
        path.addLine(to: CGPoint(x: anchorPoint.x + b/3, y: anchorPoint.y + hypo/3 - h/3))
        path.addLine(to: CGPoint(x: anchorPoint.x, y: anchorPoint.y + hypo/3))
        path.close()
        color.setFill()
        path.fill()
        path.stroke()
    }
    
    func drawFFCell(color: UIColor, index: Int) {
        let path = UIBezierPath()
        let col = index % 3
        let row = index / 3
        let anchorPointX: CGFloat = middle.x + CGFloat(col) * b/3 - 2 * b/3
        let anchorPointY: CGFloat = middle.y + CGFloat(row) * hypo/3 + CGFloat(col) * h/3 - hypo/3
        
        let anchorPoint = CGPoint(x: anchorPointX, y: anchorPointY)
        
        path.move(to: anchorPoint)
        path.addLine(to: CGPoint(x: anchorPoint.x - b/3, y: anchorPoint.y - h/3))
        path.addLine(to: CGPoint(x: anchorPoint.x - b/3, y: anchorPoint.y + hypo/3 - h/3))
        path.addLine(to: CGPoint(x: anchorPoint.x, y: anchorPoint.y + hypo/3))
        path.close()
        color.setFill()
        path.fill()
        path.stroke()
    }
    
    func drawUFCell(color: UIColor, index: Int) {
        let anchor = CGPoint(x: middle.x - b, y: middle.y - h)
        let path = UIBezierPath()
        let col = index % 3
        let row = index / 3
        let anchorPointX: CGFloat = anchor.x + CGFloat(col) * b/3 + 2 * b/3 - CGFloat(row) * b/3
        let anchorPointY: CGFloat = anchor.y + CGFloat(row) * hypo/6 + CGFloat(col) * hypo/6 - hypo/3
        
        
        let anchorPoint = CGPoint(x: anchorPointX, y: anchorPointY)
        
        path.move(to: anchorPoint)
        path.addLine(to: CGPoint(x: anchorPoint.x + b/3, y: anchorPoint.y + hypo/6))
        path.addLine(to: CGPoint(x: anchorPoint.x + b/3 * 2, y: anchorPoint.y))
        path.addLine(to: CGPoint(x: anchorPoint.x + b/3, y: anchorPoint.y - hypo/6))
        path.close()
        color.setFill()
        path.fill()
        path.stroke()
    }
    
    func drawFaces() {
        guard let delegate = delegate else { return }
        for i in 0 ..< 9 {
            drawRFCell(color: findColor(color: delegate.abcd(index: i, face: .RF)), index: i)
            drawFFCell(color: findColor(color: delegate.abcd(index: i, face: .FF)), index: i)
            drawUFCell(color: findColor(color: delegate.abcd(index: i, face: .UF)), index: i)
            
        }
    }
    
    func findColor(color: RCColor) -> UIColor {
        switch color {
        case .blue:
            return UIColor.blue
        case .orange:
            return UIColor.orange
        case .green:
            return UIColor.green
        case .red:
            return UIColor.red
        case .white:
            return UIColor.white
        case .yellow:
            return UIColor.yellow
        }
    }
    
    func xToCol(x: CGFloat) -> Int {
        return Int((x - (middle.x - b))/(b/3))
    }
    
    func yToRow(x: CGFloat, y: CGFloat) -> Int {
        let bigB = hypo/2
        let bigA = b
        let smallA = middle.x - x
        let smallB = bigB/bigA * smallA
        return Int((y - (middle.y - smallB))/(hypo/3))
    }
    
}
