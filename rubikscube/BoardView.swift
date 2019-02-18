//
//  BoardView.swift
//  rubikscube
//
//  Created by Cody Wang on 2019-02-01.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

 class BoardView: UIView {
    
    let cubeOriginX: CGFloat = 30
    let cubeOriginY: CGFloat = 90
    let cellSideValue: CGFloat = 50
    
    override func draw(_ rect: CGRect) {

        for column in 0..<3 {
            for row in 0..<3 {
                drawSquare(originX: cubeOriginX + cellSideValue * CGFloat(column), originY: cubeOriginY + cellSideValue * CGFloat(row), cellSide: cellSideValue, cellColor: UIColor.white)

                drawParallogram(originX: cubeOriginX + cellSideValue * CGFloat(column) + 13 * CGFloat(row), originY: cubeOriginY - 10 * CGFloat(row), cellSide: cellSideValue, cellColor: UIColor.blue)
                
                rightParallelogram(originX: cubeOriginX + cellSideValue * 3 + 13 * CGFloat(row), originY: cubeOriginY - cellSideValue * CGFloat(column) + cellSideValue * 3 - 10 * CGFloat(row), cellSide: cellSideValue, cellColor: UIColor.red)
            }
        }
    }

    func drawSquare(originX: CGFloat, originY: CGFloat, cellSide: CGFloat, cellColor: UIColor) {
        let leftSquare = UIBezierPath()
        
        leftSquare.move(to: CGPoint(x: originX, y: originY))
        leftSquare.addLine(to: CGPoint(x: originX + cellSide, y: originY))
        leftSquare.addLine(to: CGPoint(x: originX + cellSide, y: originY + cellSide))
        leftSquare.addLine(to: CGPoint(x: originX, y: originY + cellSide))
        leftSquare.close()
        
        cellColor.setFill()
        leftSquare.fill()
        
        leftSquare.lineWidth = 0.3
        leftSquare.stroke()
    }
    
    func drawParallogram(originX: CGFloat, originY: CGFloat, cellSide: CGFloat, cellColor: UIColor) {
        let parallelogram = UIBezierPath()
        
        parallelogram.move(to: CGPoint(x: originX, y: originY))
        parallelogram.addLine(to: CGPoint(x: originX + 13, y: originY - 10))
        parallelogram.addLine(to: CGPoint(x: originX + cellSide + 13, y: originY - 10))
        parallelogram.addLine(to: CGPoint(x: originX + cellSide, y: originY))
        parallelogram.close()
        
        cellColor.setFill()
        parallelogram.fill()
        
        parallelogram.lineWidth = 0.3
        parallelogram.stroke()
    }

    
    func rightParallelogram(originX: CGFloat, originY: CGFloat, cellSide: CGFloat, cellColor: UIColor) {
        let parallelogram = UIBezierPath()
        
        parallelogram.move(to: CGPoint(x: originX, y: originY))
        parallelogram.addLine(to: CGPoint(x: originX, y: originY - cellSide))
        parallelogram.addLine(to: CGPoint(x: originX + 13, y: originY - cellSide - 10))
        parallelogram.addLine(to: CGPoint(x: originX + 13, y: originY - 10))
        parallelogram.close()
        
        cellColor.setFill()
        parallelogram.fill()
        
        parallelogram.lineWidth = 0.3
        parallelogram.stroke()
    }
 }

