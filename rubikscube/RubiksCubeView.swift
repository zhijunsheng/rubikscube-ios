//
//  RubiksCubeView.swift
//  rubikscube
//
//  Created by jichengye on 2022/2/17.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksCubeView: UIView {
    
    var cellSide: CGFloat = 100
    var gridX: CGFloat = 200
    var gridY: CGFloat = 300
    
    override func draw(_ rect: CGRect) {
        
        drawFrontFaceSquare(col: 0, row: 0, color: .red)
        drawFrontFaceSquare(col: 0, row: 1, color: .blue)
        drawFrontFaceSquare(col: 0, row: 2, color: .yellow)
        drawFrontFaceSquare(col: 1, row: 0, color: .white)
        drawFrontFaceSquare(col: 1, row: 1, color: .orange)
        drawFrontFaceSquare(col: 1, row: 2, color: .white)
        drawFrontFaceSquare(col: 2, row: 0, color: .green)
        drawFrontFaceSquare(col: 2, row: 1, color: .blue)
        drawFrontFaceSquare(col: 2, row: 2, color: .red)
        drawGrid()
    }
    
    func drawFrontFaceSquare(col: Int, row: Int, color: RubiksCubeColor) {
        switch color {
        case .green: UIColor.green.setFill()
        case .red: UIColor.red.setFill()
        case .yellow: UIColor.yellow.setFill()
        case .blue: UIColor.blue.setFill()
        case .white: UIColor.white.setFill()
        case .orange: UIColor.orange.setFill()
        }
        UIBezierPath(rect: CGRect(x: gridX + cellSide * CGFloat(col), y: gridY + cellSide * CGFloat(row), width: cellSide, height: cellSide)).fill()
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
        
        grid.stroke()
    }
}
