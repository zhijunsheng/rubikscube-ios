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
        up: [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow],
        front: [.yellow, .blue, .green, .red, .red, .red, .red, .red, .white],
        right: [.green, .green, .green, .green, .green, .green, .green, .green, .green,],
        down: [ .white, .white, .white, .white, .white, .white, .white, .white, .white,],
        left: [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue,],
        back: [ .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange,])

    override func draw(_ rect: CGRect) {
        for i in 0 ..< 9 {
            let (col, row) = mapIndexToColRow(index: i)
            
            if rubiksCube.front[i] == .green {
                drawSquare(x: originX + cellSide * CGFloat(col), y: originY + cellSide * CGFloat(row), color: .green)
            } else if rubiksCube.front[i] == .red {
                drawSquare(x: originX + cellSide * CGFloat(col), y: originY + cellSide * CGFloat(row), color: .red)
            } else if rubiksCube.front[i] == .blue{
                drawSquare(x: originX + cellSide * CGFloat(col), y: originY + cellSide * CGFloat(row), color: .blue)
            } else if rubiksCube.front[i] == .yellow {
                drawSquare(x: originX + cellSide * CGFloat(col), y: originY + cellSide * CGFloat(row), color: .yellow)
            } else if rubiksCube.front[i] == .white {
                drawSquare(x: originX + cellSide * CGFloat(col), y: originY + cellSide * CGFloat(row), color: .white)
            } else if rubiksCube.front[i] == .orange {
                drawSquare(x: originX + cellSide * CGFloat(col), y: originY + cellSide * CGFloat(row), color: .orange)
            }

        }
    }

    func drawSquare(x: CGFloat, y: CGFloat, color: UIColor) {
        let pen = UIBezierPath()
        
        pen.move(to: CGPoint(x: x, y: y))
        pen.addLine(to: CGPoint(x: x + cellSide, y: y))
        pen.addLine(to: CGPoint(x: x + cellSide, y: y + cellSide))
        pen.addLine(to: CGPoint(x: x, y: y + cellSide))
        
        pen.close()
        pen.stroke()
        
        color.setFill()
        pen.fill()
    }
    
    func drawParallelogram(x: CGFloat, y: CGFloat, color: UIColor) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + cellSide + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + cellSide, y: y))
        
        pencil.close()
        pencil.stroke()
        
        color.setFill()
        pencil.fill()
    }
    
    func drawParallelogram2(x: CGFloat, y:CGFloat, color: UIColor) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY + cellSide))
        pencil.addLine(to: CGPoint(x: x, y: y + cellSide))
        
        pencil.close()
        pencil.stroke()
        
        color.setFill()
        pencil.fill()
    }
    
    func mapIndexToColRow(index: Int) -> (Int, Int) {
        return (index % 3, index / 3)
    }
}
