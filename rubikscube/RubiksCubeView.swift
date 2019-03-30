//
//  RubiksCubeView.swift
//  rubikscube
//
//  Created by Halwong on 2019/3/1.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksCubeView: UIView {
    static var originX: CGFloat = 30
    static var originY: CGFloat = 80
    static var cellSide: CGFloat = 190
    static let offsetX: CGFloat = cellSide * 0.25
    static let offsetY: CGFloat = cellSide * 0.25

    var rubiksCube: RubiksCube = RubiksCube()
    
    override func draw(_ rect: CGRect) { //
        RubiksCubeView.cellSide = min(bounds.width, bounds.height) * 0.9 / 4
        
        RubiksCubeView.originX =  (bounds.width - 3 * RubiksCubeView.cellSide - 3 * RubiksCubeView.offsetX) / 2
        
        RubiksCubeView.originY = (bounds.height - 3 * RubiksCubeView.cellSide - 3 * RubiksCubeView.offsetY) / 2 + 3 * RubiksCubeView.offsetY
        
        for i in 0 ..< 9 {
            let col = i % 3
            let row = i / 3
            
            // front
            drawSquare(x: RubiksCubeView.originX + RubiksCubeView.cellSide * CGFloat(col), y: RubiksCubeView.originY + RubiksCubeView.cellSide * CGFloat(row), cellColor: rubiksCube.front[i])
            
            // right
            drawParallelogram2(x: RubiksCubeView.originX + 3 * RubiksCubeView.cellSide + RubiksCubeView.offsetX * CGFloat(col), y: RubiksCubeView.originY + RubiksCubeView.cellSide * CGFloat(row) - RubiksCubeView.offsetY * CGFloat(col), cellColor: rubiksCube.right[i])
            
            // up
            let rowForUp = 2 - i / 3
            drawParallelogram(x: RubiksCubeView.originX + RubiksCubeView.cellSide * CGFloat(col) + RubiksCubeView.offsetX * CGFloat(rowForUp), y: RubiksCubeView.originY - RubiksCubeView.offsetY * CGFloat(rowForUp), cellColor: rubiksCube.up[i])
        }
    }

    func drawSquare(x: CGFloat, y: CGFloat, cellColor: CellColor) {
        let pen = UIBezierPath()
        
        pen.move(to: CGPoint(x: x, y: y))
        pen.addLine(to: CGPoint(x: x + RubiksCubeView.cellSide, y: y))
        pen.addLine(to: CGPoint(x: x + RubiksCubeView.cellSide, y: y + RubiksCubeView.cellSide))
        pen.addLine(to: CGPoint(x: x, y: y + RubiksCubeView.cellSide))
        
        pen.close()
        pen.stroke()
        
        if cellColor == .green {
            UIColor.green.setFill()
        } else if cellColor == .red {
            UIColor.red.setFill()
        } else if cellColor == .blue{
            UIColor.blue.setFill()
        } else if cellColor == .yellow {
            UIColor.yellow.setFill()
        } else if cellColor == .white {
            UIColor.white.setFill()
        } else if cellColor == .orange {
            UIColor.orange.setFill()
        }
        
        pen.fill()
    }
    
    func drawParallelogram(x: CGFloat, y: CGFloat, cellColor: CellColor) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x + RubiksCubeView.offsetX, y: y - RubiksCubeView.offsetY))
        pencil.addLine(to: CGPoint(x: x + RubiksCubeView.cellSide + RubiksCubeView.offsetX, y: y - RubiksCubeView.offsetY))
        pencil.addLine(to: CGPoint(x: x + RubiksCubeView.cellSide, y: y))
        
        pencil.close()
        pencil.stroke()
        
        if cellColor == .green {
            UIColor.green.setFill()
        } else if cellColor == .red {
            UIColor.red.setFill()
        } else if cellColor == .blue{
            UIColor.blue.setFill()
        } else if cellColor == .yellow {
            UIColor.yellow.setFill()
        } else if cellColor == .white {
            UIColor.white.setFill()
        } else if cellColor == .orange {
            UIColor.orange.setFill()
        }
        
        pencil.fill()
    }
    
    func drawParallelogram2(x: CGFloat, y:CGFloat, cellColor: CellColor) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x + RubiksCubeView.offsetX, y: y - RubiksCubeView.offsetY))
        pencil.addLine(to: CGPoint(x: x + RubiksCubeView.offsetX, y: y - RubiksCubeView.offsetY + RubiksCubeView.cellSide))
        pencil.addLine(to: CGPoint(x: x, y: y + RubiksCubeView.cellSide))
        
        pencil.close()
        pencil.stroke()
        
        if cellColor == .green {
            UIColor.green.setFill()
        } else if cellColor == .red {
            UIColor.red.setFill()
        } else if cellColor == .blue{
            UIColor.blue.setFill()
        } else if cellColor == .yellow {
            UIColor.yellow.setFill()
        } else if cellColor == .white {
            UIColor.white.setFill()
        } else if cellColor == .orange {
            UIColor.orange.setFill()
        }
        
        pencil.fill()
    }
}
