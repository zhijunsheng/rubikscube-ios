//
//  RubiksCubeView.swift
//  rubikscube
//
//  Created by jichengye on 2022/2/17.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksCubeView: UIView {
    
    var cellSide: CGFloat = 130
    var gridX: CGFloat = 100
    var gridY: CGFloat = 250
    
    var frontFace: [RubiksCubeColor] = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
    
    var upFace: [RubiksCubeColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    
    var rightFace: [RubiksCubeColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    
    override func draw(_ rect: CGRect) {
        drawFrontFace()
        drawUpFace()
        drawRightFace()
        drawGrid()
    }
    
    func drawFrontFace() {
        for col in 0 ..< 3 {
            for row in 0 ..< 3 {
                drawFrontFaceSquare(col: col, row: row, color: frontFace[col + row * 3])
            }
        }
    }
    
    func drawUpFace() {
        for col in 0 ..< 3 {
            for row in 0 ..< 3 {
                drawUpFaceSquare(col: col, row: row, color: upFace[col + row * 3])
            }
        }
    }
    
    func drawRightFace() {
        for col in 0 ..< 3 {
            for row in 0 ..< 3 {
                drawRightFaceSquare(col: col, row: row, color: rightFace[col + row * 3])
            }
        }
    }
    
    func drawFrontFaceSquare(col: Int, row: Int, color: RubiksCubeColor) {
        convertColor(color: color).setFill()
        UIBezierPath(rect: CGRect(x: gridX + cellSide * CGFloat(col), y: gridY + cellSide * CGFloat(row), width: cellSide, height: cellSide)).fill()
    }
    
    func drawUpFaceSquare(col: Int, row: Int, color: RubiksCubeColor) {
        convertColor(color: color).setFill()
        
        let anchorX = gridX + cellSide - CGFloat(row) * cellSide / 3  + CGFloat(col) * cellSide
        let anchorY = gridY - cellSide + CGFloat(row) * cellSide / 3
        
        let line = UIBezierPath()
        line.move(to: CGPoint(x: anchorX, y: anchorY))
        line.addLine(to: CGPoint(x: anchorX + cellSide, y: anchorY))
        line.addLine(to: CGPoint(x: anchorX + cellSide * 2 / 3, y: anchorY + cellSide / 3))
        line.addLine(to: CGPoint(x: anchorX - cellSide / 3, y: anchorY + cellSide / 3))
        line.close()
        line.fill()
    }
    
    func drawRightFaceSquare(col: Int, row: Int, color: RubiksCubeColor) {
        convertColor(color: color).setFill()
        
        let anchorX = gridX + cellSide * 3 + CGFloat(col) * cellSide / 3
        let anchorY = gridY - CGFloat(col) * cellSide / 3 + CGFloat(row) * cellSide
        
        let line = UIBezierPath()
        line.move(to: CGPoint(x: anchorX, y: anchorY))
        line.addLine(to: CGPoint(x: anchorX + cellSide / 3, y: anchorY - cellSide / 3))
        line.addLine(to: CGPoint(x: anchorX + cellSide / 3, y: anchorY - cellSide / 3 + cellSide))
        line.addLine(to: CGPoint(x: anchorX, y: anchorY + cellSide))
        line.close()
        line.fill()
        
    }
    
    func drawGrid()  {
        let grid = UIBezierPath()
        
        for i in 0 ..< 4 {
            grid.move(to: CGPoint(x: gridX, y: gridY + cellSide * CGFloat(i)))
            grid.addLine(to: CGPoint(x: gridX + 3 * cellSide, y: gridY + cellSide * CGFloat(i)))
            
            grid.move(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY))
            grid.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY + 3 * cellSide))
            
            grid.move(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY))
            grid.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(1 + i), y: gridY - cellSide))
        }
        
        for i in 0 ..< 3 {
            grid.move(to: CGPoint(x: gridX + cellSide  * CGFloat(i + 1) / 3, y: gridY - cellSide * CGFloat(i + 1) / 3 ))
            grid.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(i + 1) / 3 + cellSide * 3, y: gridY - cellSide * CGFloat(i + 1) / 3))
            
            grid.move(to: CGPoint(x: gridX + cellSide * 3 + cellSide * CGFloat(i + 1) / 3, y: gridY - cellSide * CGFloat(i + 1) / 3))
            grid.addLine(to: CGPoint(x: gridX + cellSide * 3 + cellSide * CGFloat(i + 1) / 3, y: gridY - cellSide * CGFloat(i + 1) / 3 + cellSide * 3))
            
            grid.move(to: CGPoint(x: gridX + cellSide * 3, y: gridY + cellSide * CGFloat(i + 1)))
            grid.addLine(to: CGPoint(x: gridX + cellSide * 4, y: gridY + cellSide * CGFloat(i)))
        }
        grid.lineWidth = 4
        grid.stroke()
    }
    
    func convertColor(color: RubiksCubeColor) -> UIColor {
        let finalColor: UIColor
        switch color {
        case .green:
            finalColor = UIColor.green
        case .red:
            finalColor = UIColor.red
        case .yellow:
            finalColor = UIColor.yellow
        case .blue:
            finalColor = UIColor.blue
        case .white:
            finalColor = UIColor.white
        case .orange:
            finalColor = UIColor.orange
        }
        return finalColor
    }
}
