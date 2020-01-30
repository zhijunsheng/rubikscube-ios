//
//  CubeView.swift
//  rubikscube
//
//  Created by Grace Huang on 1/23/20.
//  Copyright © 2020 Gold Thumb Inc. All rights reserved.
//

import UIKit

class CubeView: UIView {
    let squareSide: CGFloat = 104// 150
    let originX: CGFloat = 150
    let originY: CGFloat = 300
    var leftPointX: CGFloat = 2256546 - 23456789
    var rightPointX: CGFloat = 676879
    var pointY: CGFloat = 806997

    override func draw(_ rect: CGRect) {
        leftPointX = originX + 125
        rightPointX = originX + squareSide * 3 + 125
        pointY = originY - 120
        let path = UIBezierPath(rect: CGRect(x: originX, y: originY, width: squareSide * 3, height: squareSide * 3))
        
        drawCubeEdges()
        drawFront()
        drawTop()
        drawRight()
        path.stroke()
    }
    
    func drawCubeEdges() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: originX, y: originY))
        path.addLine(to: CGPoint(x: leftPointX, y: pointY))
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY))
        path.addLine(to: CGPoint(x: leftPointX, y: pointY))
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide * 3))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY + squareSide * 3))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY))
        path.stroke()
    }
    func drawFront() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: originX + squareSide, y: originY))
        path.addLine(to: CGPoint(x: originX + squareSide, y: originY + squareSide * 3))
        path.move(to: CGPoint(x: originX + squareSide * 2, y: originY))
        path.addLine(to: CGPoint(x: originX + squareSide * 2, y: originY + squareSide * 3))
        path.move(to: CGPoint(x: originX, y: originY + squareSide))
        path.addLine(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide))
        path.move(to: CGPoint(x: originX, y: originY + squareSide * 2))
        path.addLine(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide * 2))
        path.stroke()
    }
    
    func drawTop() {
        let deltaX: CGFloat = (leftPointX - originX) / 3
        let deltaY: CGFloat = (pointY - originY) / 3
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: originX + squareSide, y: originY))
        path.addLine(to: CGPoint(x: leftPointX + squareSide, y: pointY))
        path.move(to: CGPoint(x: originX + squareSide * 2, y: originY))
        path.addLine(to: CGPoint(x: leftPointX + squareSide * 2, y: pointY))
        path.move(to: CGPoint(x: originX + deltaX, y: originY + deltaY))
        path.addLine(to: CGPoint(x: originX + deltaX + squareSide * 3, y: originY + deltaY))
        path.move(to: CGPoint(x: originX + deltaX * 2, y: originY + deltaY * 2))
        path.addLine(to: CGPoint(x: originX + deltaX * 2 + squareSide * 3, y: originY + deltaY * 2))

        path.stroke()
    }
    func drawRight() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY + squareSide))
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide * 2))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY + squareSide * 2))
        path.stroke()
    }
}
