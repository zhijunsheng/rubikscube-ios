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

    override func draw(_ rect: CGRect) {
       
        for i in 0 ..< 3 {
            drawSquare(x: originX, y: originY + cellSide * CGFloat(i))
            drawSquare(x: originX + cellSide, y: originY + cellSide * CGFloat(i))
            drawSquare(x: originX + 2 * cellSide, y: originY + cellSide * CGFloat(i))
            
            drawParallelogram(x: originX + cellSide * CGFloat(i), y: originY)
            drawParallelogram(x: originX + cellSide * CGFloat(i) + offsetX, y: originY - offsetY)
            drawParallelogram(x: originX + cellSide * CGFloat(i) + offsetX * 2, y: originY - offsetY * 2)
            
            drawParallelogram2(x: originX + 3 * cellSide + offsetX * CGFloat(i), y: originY - offsetY * CGFloat(i))
            drawParallelogram2(x: originX + 3 * cellSide + offsetX * CGFloat(i), y: originY + cellSide - offsetY * CGFloat(i))
            drawParallelogram2(x: originX + 3 * cellSide + offsetX * CGFloat(i), y: originY + 2 * cellSide - offsetY * CGFloat(i))
        }
        
    }

    func drawSquare(x: CGFloat, y: CGFloat) {
        let pen = UIBezierPath()
        
        pen.move(to: CGPoint(x: x, y: y))
        pen.addLine(to: CGPoint(x: x + cellSide, y: y))
        pen.addLine(to: CGPoint(x: x + cellSide, y: y + cellSide))
        pen.addLine(to: CGPoint(x: x, y: y + cellSide))
        
        pen.close()
        pen.stroke()
        
        UIColor.red.setFill()
        pen.fill()
    }
    
    func drawParallelogram(x: CGFloat, y:CGFloat) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + cellSide + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + cellSide, y: y))
        
        pencil.close()
        pencil.stroke()
        
        UIColor.yellow.setFill()
        pencil.fill()
    }
    
    func drawParallelogram2(x: CGFloat, y:CGFloat) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY))
        pencil.addLine(to: CGPoint(x: x + offsetX, y: y - offsetY + cellSide))
        pencil.addLine(to: CGPoint(x: x, y: y + cellSide))
        
        pencil.close()
        pencil.stroke()
        
        UIColor.green.setFill()
        pencil.fill()
    }
}
