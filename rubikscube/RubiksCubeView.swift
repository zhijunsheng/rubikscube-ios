//
//  RubiksCubeView.swift
//  rubikscube
//
//  Created by Halwong on 2019/3/1.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksCubeView: UIView {
    let originX: CGFloat = 30
    let originY: CGFloat = 150
    let cellSide: CGFloat = 40
    let offsetX: CGFloat = 10
    let offsetY: CGFloat = 10

    var rubiksCube: RubiksCube = RubiksCube(
        up: [.yellow, .yellow, .blue, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow],
        front: [.red, .red, .red, .red, .red, .red, .red, .red, .red],
        right: [.green, .green, .green, .green, .green, .green, .green, .green, .green,],
        down: [ .white, .white, .white, .white, .white, .white, .white, .white, .white,],
        left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
        back: [ .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange,])
    
    override func draw(_ rect: CGRect) {
        
        // front
        // 0 -> (0, 0)
        // 1 -> (1, 0)
        // 2 -> (2, 0)
        //
        // 3 -> (0, 1)
        // 4 -> (1, 1)
        // 5 -> (2, 1)
        //
        // 6 -> (0, 2)
        // 7 -> (1, 2)
        // 8 -> (2, 2)
        for i in 0 ..< 9 {
            let (col, row) = (i % 3, i / 3)
            
            drawSquare(x: originX + cellSide * CGFloat(col), y: originY + cellSide * CGFloat(row), cellColor: rubiksCube.front[i])
            
//            drawParallelogram(x: originX + cellSide * CGFloat(col) + offsetX * CGFloat(row), y: originY - offsetY * CGFloat(row), cellColor: rubiksCube.up[i])
            
//            drawParallelogram2(x: originX + 3 * cellSide + offsetX * CGFloat(col), y: originY + cellSide * CGFloat(row) - offsetY * CGFloat(col), cellColor: rubiksCube.right[i])
        }
        
        // up
        
        // x -> y
        // 0 -> 2
        // 1 -> 1
        // 2 -> 0
        
        // 0 -> (0, 2)
        // 1 -> (1, 2)
        // 2 -> (2, 2)
        //
        // 3 -> (0, 1)
        // 4 -> (1, 1)
        // 5 -> (2, 1)
        //
        // 6 -> (0, 0)
        // 7 -> (1, 0)
        // 8 -> (2, 0)
        
//        for i in 0 ..< 9 {
//            let (col, row) = (i % 3, i / 3)
//
//            drawParallelogram(x: originX + cellSide * CGFloat(col) + offsetX * CGFloat(row), y: originY - offsetY * CGFloat(row), cellColor: rubiksCube.up[i])
//        }
        
        drawParallelogram(x: originX + offsetX * 2 + cellSide * 0, y: originY - offsetY * 2, cellColor: rubiksCube.up[0])
        drawParallelogram(x: originX + offsetX * 2 + cellSide * 1, y: originY - offsetY * 2, cellColor: rubiksCube.up[1])
        drawParallelogram(x: originX + offsetX * 2 + cellSide * 2, y: originY - offsetY * 2, cellColor: rubiksCube.up[2])
        
        drawParallelogram(x: originX + offsetX * 1 + cellSide * 0, y: originY - offsetY * 1, cellColor: rubiksCube.up[3])
        drawParallelogram(x: originX + offsetX * 1 + cellSide * 1, y: originY - offsetY * 1, cellColor: rubiksCube.up[4])
        drawParallelogram(x: originX + offsetX * 1 + cellSide * 2, y: originY - offsetY * 1, cellColor: rubiksCube.up[5])
        
        drawParallelogram(x: originX + offsetX * 0 + cellSide * 0, y: originY - offsetY * 0, cellColor: rubiksCube.up[6])
        drawParallelogram(x: originX + offsetX * 0 + cellSide * 1, y: originY - offsetY * 0, cellColor: rubiksCube.up[7])
        drawParallelogram(x: originX + offsetX * 0 + cellSide * 2, y: originY - offsetY * 0, cellColor: rubiksCube.up[8])
        
        // right
        
        for i in 0 ..< 9 {
            let (col, row) = (i % 3, i / 3)
            
            drawParallelogram2(x: originX + 3 * cellSide + offsetX * CGFloat(col), y: originY + cellSide * CGFloat(row) - offsetY * CGFloat(col), cellColor: rubiksCube.right[i])
        }
    }

    func drawSquare(x: CGFloat, y: CGFloat, cellColor: CellColor) {
        let pen = UIBezierPath()
        
        pen.move(to: CGPoint(x: x, y: y))
        pen.addLine(to: CGPoint(x: x + cellSide, y: y))
        pen.addLine(to: CGPoint(x: x + cellSide, y: y + cellSide))
        pen.addLine(to: CGPoint(x: x, y: y + cellSide))
        
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
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + cellSide + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + cellSide, y: y))
        
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
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY + cellSide))
        pencil.addLine(to: CGPoint(x: x, y: y + cellSide))
        
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
