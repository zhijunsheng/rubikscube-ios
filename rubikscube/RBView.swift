//
//  RBView.swift
//  rubikscube
//
//  Created by Felix Lo on 2021-03-27.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit


class RBView: UIView {
    var middle = CGPoint(x: 0, y: 0)
    let hypo: CGFloat = 200 // cube side length
    
    override func draw(_ rect: CGRect) {
        middle = CGPoint(x: bounds.width/2, y: bounds.height/2)
        drawCube()
    }
    
    func drawCube() {
        let path = UIBezierPath()
        let h = sin(30/180 * CGFloat.pi) * hypo // side corner to middle
        let b = cos(30/180 * CGFloat.pi) * hypo // middle to edge
        let tfLeftSide = CGPoint(x: middle.x - b, y: middle.y - h)
        let tfRightSide = CGPoint(x: middle.x + b, y: middle.y - h)
        path.move(to: middle)
        path.addLine(to: CGPoint(x: middle.x, y: middle.y + hypo))
        path.addLine(to: CGPoint(x: middle.x + b, y: middle.y + hypo - h))
        path.addLine(to: CGPoint(x: middle.x + b, y: middle.y - h))
        path.close()
        
        path.move(to: middle)
        path.addLine(to: CGPoint(x: middle.x, y: middle.y + hypo))
        path.addLine(to: CGPoint(x: middle.x - b, y: middle.y + hypo - h))
        path.addLine(to: CGPoint(x: middle.x - b, y: middle.y - h))
        path.close()
        
        path.move(to: middle)
        path.addLine(to: tfRightSide)
        path.addLine(to: CGPoint(x: middle.x, y: middle.y - hypo))
        path.addLine(to: tfLeftSide)
        path.close()
        
        for i in 0 ..< 2 {
            // right face vertical
            path.move(to: CGPoint(x: middle.x + b/3 * CGFloat(i + 1), y: middle.y - h/3 * CGFloat(i + 1)))
            path.addLine(to: CGPoint(x: middle.x + b/3 * CGFloat(i + 1), y: middle.y + hypo - h/3 * CGFloat(i + 1)))
            // right face horizontal
            path.move(to: CGPoint(x: middle.x, y: middle.y + hypo/3 * CGFloat(i + 1)))
            path.addLine(to: CGPoint(x: tfRightSide.x, y: tfRightSide.y + hypo/3 * CGFloat(i + 1)))
            // left face vertical
            path.move(to: CGPoint(x: middle.x - b/3 * CGFloat(i + 1), y: middle.y - h/3 * CGFloat(i + 1)))
            path.addLine(to: CGPoint(x: middle.x - b/3 * CGFloat(i + 1), y: middle.y + hypo - h/3 * CGFloat(i + 1)))
            // left face horizontal
            path.move(to: CGPoint(x: middle.x, y: middle.y + hypo/3 * CGFloat(i + 1)))
            path.addLine(to: CGPoint(x: tfLeftSide.x, y: tfLeftSide.y + hypo/3 * CGFloat(i + 1)))
            // top face left
            path.move(to: CGPoint(x: middle.x + b/3 * CGFloat(i + 1), y: middle.y - h/3 * CGFloat(i + 1)))
            path.addLine(to: CGPoint(x: tfLeftSide.x + b/3 * CGFloat(i + 1), y: tfLeftSide.y - h/3 * CGFloat(i + 1)))
            // top face right
            path.move(to: CGPoint(x: middle.x - b/3 * CGFloat(i + 1), y: middle.y - h/3 * CGFloat(i + 1)))
            path.addLine(to: CGPoint(x: tfRightSide.x - b/3 * CGFloat(i + 1), y: tfLeftSide.y - h/3 * CGFloat(i + 1)))
        }
        
        

        path.stroke()
    }
}
