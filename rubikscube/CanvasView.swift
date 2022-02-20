//
//  CanvasView.swift
//  rubikscube
//
//  Created by Lambert Lin on 2022/2/6.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    let cellSide: CGFloat = 170
    let gridX: CGFloat = 70
    let gridY: CGFloat = 151
    
    override func draw(_ rect: CGRect) {
        drawFrontFace()
        drawUpperFace()
        drawRightFace()
        drawGrid()

    }
    
    func drawFrontFace() {
        drawFrontFaceSquareAt(col: 0, row: 0, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        drawFrontFaceSquareAt(col: 0, row: 1, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawFrontFaceSquareAt(col: 0, row: 2, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))

        drawFrontFaceSquareAt(col: 1, row: 0, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawFrontFaceSquareAt(col: 1, row: 1, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        drawFrontFaceSquareAt(col: 1, row: 2, color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))

        drawFrontFaceSquareAt(col: 2, row: 0, color: #colorLiteral(red: 0.9999304414, green: 0, blue: 0, alpha: 1))
        drawFrontFaceSquareAt(col: 2, row: 1, color: #colorLiteral(red: 1, green: 0.9612814784, blue: 0, alpha: 1))
        drawFrontFaceSquareAt(col: 2, row: 2, color: #colorLiteral(red: 1, green: 0, blue: 0.01270750538, alpha: 1))
    }

    func drawUpperFace() {
        drawUpperFaceSquareAt(col: 0, row: 0, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawUpperFaceSquareAt(col: 1, row: 0, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        drawUpperFaceSquareAt(col: 2, row: 0, color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        
        drawUpperFaceSquareAt(col: 0, row: 1, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawUpperFaceSquareAt(col: 1, row: 1, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        drawUpperFaceSquareAt(col: 2, row: 1, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        
        drawUpperFaceSquareAt(col: 0, row: 2, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawUpperFaceSquareAt(col: 1, row: 2, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        drawUpperFaceSquareAt(col: 2, row: 2, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
    }
    
    func drawRightFace() {
        drawRightFaceSquareAt(col: 0, row: 0, color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        drawRightFaceSquareAt(col: 0, row: 1, color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        drawRightFaceSquareAt(col: 0, row: 2, color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
        
        drawRightFaceSquareAt(col: 1, row: 0, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawRightFaceSquareAt(col: 1, row: 1, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        drawRightFaceSquareAt(col: 1, row: 2, color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
        
        drawRightFaceSquareAt(col: 2, row: 0, color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawRightFaceSquareAt(col: 2, row: 1, color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        drawRightFaceSquareAt(col: 2, row: 2, color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    
    func drawGrid() {
        gridFrontFace()
        gridUpperFace()
        gridRightFace()
    }
    
    func drawRightFaceSquareAt(col: Int, row: Int, color: UIColor) {
        let x = gridX + 3 * cellSide + cellSide/6 * CGFloat(col + 1)
        let y = gridY - CGFloat(col + 1) * cellSide/6 + CGFloat(row) * cellSide
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x - cellSide/6, y: y + cellSide/6))
        pencil.addLine(to: CGPoint(x: x - cellSide/6 , y: y + cellSide/6 + cellSide))
        pencil.addLine(to: CGPoint(x: x, y: y + cellSide))
        pencil.close()
        color.setFill()
        pencil.fill()
    }
    
    func drawUpperFaceSquareAt(col: Int, row: Int, color: UIColor) {
        let x = gridX + CGFloat(col) * cellSide + cellSide/6 * CGFloat(3 - row)
        let y = gridY + CGFloat(row - 3) * cellSide/6
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x - cellSide/6, y: y + cellSide/6))
        pencil.addLine(to: CGPoint(x: x - cellSide/6 + cellSide, y: y + cellSide/6))
        pencil.addLine(to: CGPoint(x: x + cellSide, y: y))
        pencil.close()
        color.setFill()
        pencil.fill()
    }
    
    func drawFrontFaceSquareAt(col: Int, row: Int, color: UIColor) {
        let pen = UIBezierPath()

        pen.move(to: CGPoint(x: gridX + CGFloat(col) * cellSide, y: gridY + CGFloat(row) * cellSide))
        pen.addLine(to: CGPoint(x: gridX + CGFloat(col) * cellSide, y: gridY + CGFloat(row) * cellSide + cellSide))
        pen.addLine(to: CGPoint(x: gridX + CGFloat(col) * cellSide + cellSide, y: gridY + CGFloat(row) * cellSide + cellSide))
        pen.addLine(to: CGPoint(x: gridX + CGFloat(col) * cellSide + cellSide, y: gridY + CGFloat(row) * cellSide))
        pen.close()
        color.setFill()
        pen.fill()
    }
    
    func gridUpperFace() {
        let pencil = UIBezierPath()
        for i in 0..<4 {
            pencil.move(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY))
            pencil.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(i) + cellSide/2, y:  gridY - cellSide/2))
        }
        for i in 0..<3 {
            pencil.move(to: CGPoint(x: gridX + CGFloat(i + 1) * cellSide/6 , y: gridY - CGFloat(i + 1) * cellSide/6))
            pencil.addLine(to: CGPoint(x: gridX + cellSide * 3 + cellSide/6 * CGFloat(i + 1), y:  gridY - cellSide/6 * CGFloat(i + 1)))
        }
        pencil.lineWidth = 4
        pencil.stroke()
    }
    
    func gridFrontFace() {
        let pencil = UIBezierPath()
        for i in 0..<4 {
            pencil.move(to: CGPoint(x: gridX + CGFloat(i) * cellSide, y: gridY))
            pencil.addLine(to: CGPoint(x: gridX + CGFloat(i) * cellSide, y: gridY + 3 * cellSide))
            pencil.move(to: CGPoint(x: gridX, y: gridY + CGFloat(i) * cellSide))
            pencil.addLine(to: CGPoint(x: gridX + 3 * cellSide, y: gridY + CGFloat(i) * cellSide))

        }
        pencil.lineWidth = 5
        pencil.stroke()
    }
    
    func gridRightFace() {
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
        pencil.lineWidth = 4
        pencil.stroke()
    }
}
