//
//  CanvasView.swift
//  rubikscube
//
//  Created by Lambert Lin on 2022/2/6.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    let cellSide: CGFloat = 123
    let gridX: CGFloat = 150
    let gridY: CGFloat = 201
    
    override func draw(_ rect: CGRect) {
        frontFace()
        upperFace()
        rightFace()
        
        drawFrontFaceSquareAt(col: 0, row: 0)
        drawFrontFaceSquareAt(col: 1, row: 2)
        drawFrontFaceSquareAt(col: 2, row: 1)
        drawFrontFaceSquareAt(col: 2, row: 2)
    }
    
    func drawFrontFaceSquareAt(col: Int, row: Int) {
        let pen = UIBezierPath()
        
        pen.move(to: CGPoint(x: gridX + CGFloat(col) * cellSide, y: gridY + CGFloat(row) * cellSide))
        pen.addLine(to: CGPoint(x: gridX + CGFloat(col) * cellSide, y: gridY + CGFloat(row) * cellSide + cellSide))
        pen.addLine(to: CGPoint(x: gridX + CGFloat(col) * cellSide + cellSide, y: gridY + CGFloat(row) * cellSide + cellSide))
        pen.addLine(to: CGPoint(x: gridX + CGFloat(col) * cellSide + cellSide, y: gridY + CGFloat(row) * cellSide))
        
        // new code
        
        
        pen.close()
        #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).setFill()
        pen.fill()
    }
    
    func upperFace() {
        
        let pencil = UIBezierPath()
        for i in 0..<4 {
            pencil.move(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY))
            pencil.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(i) + cellSide/2, y:  gridY - cellSide/2))
        }
        for i in 0..<3 {
            pencil.move(to: CGPoint(x: gridX + cellSide/2, y: gridY - cellSide/2))
            pencil.addLine(to: CGPoint(x: gridX + cellSide * 3 + cellSide/2, y:  gridY - cellSide/2))
        }
        
        pencil.move(to: CGPoint(x: gridX + 3 * cellSide/6 , y: gridY - cellSide/2))
        pencil.addLine(to: CGPoint(x: gridX + cellSide * 3 + cellSide/2, y:  gridY - cellSide/2))
        
        pencil.move(to: CGPoint(x: gridX + 2 * cellSide/6, y: gridY - cellSide/3))
        pencil.addLine(to: CGPoint(x: gridX + cellSide * 3 + cellSide/3, y:  gridY - cellSide/3))
        
        pencil.move(to: CGPoint(x: gridX + 1 * cellSide/6, y: gridY - cellSide/6))
        pencil.addLine(to: CGPoint(x: gridX + cellSide * 3 + cellSide/6, y:  gridY - cellSide/6))
        
        pencil.stroke()
        
    }
    
    func frontFace() {
        let pencil = UIBezierPath()
        for i in 0..<4 {
            pencil.move(to: CGPoint(x: gridX + CGFloat(i) * cellSide, y: gridY))
            pencil.addLine(to: CGPoint(x: gridX + CGFloat(i) * cellSide, y: gridY + 3 * cellSide))
            pencil.move(to: CGPoint(x: gridX, y: gridY + CGFloat(i) * cellSide))
            pencil.addLine(to: CGPoint(x: gridX + 3 * cellSide, y: gridY + CGFloat(i) * cellSide))

        }
        pencil.stroke()
    }
    
    func rightFace() {
        let pencil = UIBezierPath()
        for i in 0..<3 {
            pencil.move(to: CGPoint(x: gridX + 3 * cellSide, y: gridY + cellSide + CGFloat(i) * cellSide))
            pencil.addLine(to: CGPoint(x: gridX + 3 * cellSide + cellSide/2, y: gridY + cellSide + CGFloat(i) * cellSide - cellSide/2))
        }
        
        for i in 1..<4 {
            pencil.move(to: CGPoint(x: gridX + CGFloat(3) * cellSide + CGFloat(i) * cellSide/6, y: gridY  - CGFloat(i) *
                                        cellSide/6))
            pencil.addLine(to: CGPoint(x: gridX + CGFloat(3) * cellSide + CGFloat(i) * cellSide/6, y: gridY + 3 * cellSide - CGFloat(i) * cellSide/6))
        }
        pencil.stroke()
    }
}
