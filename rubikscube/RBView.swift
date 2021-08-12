//
//  RBView.swift
//  rubikscube
//
//  Created by Felix Lo on 2021-03-27.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit


class RBView: UIView {
    var cube: RCGame = RCGame()
    var middle = CGPoint(x: 0, y: 0)
    var h: CGFloat = 0
    var b: CGFloat = 0
    let hypo: CGFloat = 300
    
    override func draw(_ rect: CGRect) {
        middle = CGPoint(x: bounds.width/2, y: bounds.height/2)
        h = sin(30/180 * CGFloat.pi) * hypo
        b = cos(30/180 * CGFloat.pi) * hypo
        
        drawFaces()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let a = touches.first!
        let location = a.location(in: self)
        let offsetX: CGFloat = location.x - (middle.x - b)
//        print(offsetX)
        let gapY: CGFloat = tan(30/180 * CGFloat.pi) * offsetX // an expr depending on offsetX
//        print(gapY)
        
        print(location)
        if location.x > middle.x - b &&
            location.x < middle.x - 2/3 * b &&
            location.y > middle.y - h + gapY &&
            location.y < middle.y - h + gapY + hypo/3 {
            print("yes")
        } else {
            print("no")
        }
        
        
        
        
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
        for i in 0 ..< 9 {
            drawRFCell(color: findColor(color: cube.rf[i]), index: i)
            drawFFCell(color: findColor(color: cube.ff[i]), index: i)
            drawUFCell(color: findColor(color: cube.uf[i]), index: i)
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
}
