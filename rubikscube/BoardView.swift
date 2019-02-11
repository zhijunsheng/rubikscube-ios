//
//  BoardView.swift
//  rubikscube
//
//  Created by Cody Wang on 2019-02-01.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

 class BoardView: UIView {
    
    let cubeOriginX: CGFloat = 45
    let cubeOriginY: CGFloat = 75
    let cubeOriginX3: CGFloat = 225 // TODO
    let cubeOriginY3: CGFloat = 45 // TODO
    let cellSideValue: CGFloat = 60
    
    
    override func draw(_ rect: CGRect) {

        for column in 0..<3 {
            for row in 0..<3 {
                drawSquare(originX: cubeOriginX + cellSideValue * CGFloat(column), originY: cubeOriginY + cellSideValue * CGFloat(row), cellSide: cellSideValue, cellColor: UIColor.blue)
                drawParallogram(originX: cubeOriginX + cellSideValue * CGFloat(column) + 13 * CGFloat(row), originY: cubeOriginY - 10 * CGFloat(row), cellSide2: cellSideValue, cellColor2: UIColor.red)

            }
        }
        
        for a in 0..<3 {
            rightParallelogram(originX3: cubeOriginX3 + cellSideValue * CGFloat(a), originY3: cubeOriginY3, cellSide3: cellSideValue, cellColor3: UIColor.white)
        }
    }

    
    func drawSquare(originX: CGFloat, originY: CGFloat, cellSide: CGFloat, cellColor: UIColor) {
        
        let leftSquare = UIBezierPath()
        
        leftSquare.move(to: CGPoint(x: originX, y: originY))
        leftSquare.addLine(to: CGPoint(x: originX + cellSide, y: originY))
        leftSquare.addLine(to: CGPoint(x: originX + cellSide, y: originY + cellSide))
        leftSquare.addLine(to: CGPoint(x: originX, y: originY + cellSide))
        leftSquare.close()
        
        leftSquare.stroke()
        
        cellColor.setFill()
       
        leftSquare.fill()
        
    }
    
    
    func drawParallogram(originX: CGFloat, originY: CGFloat, cellSide2: CGFloat, cellColor2: UIColor) {
       
        let parallelogram = UIBezierPath()
        
        parallelogram.move(to: CGPoint(x: originX, y: originY))
        parallelogram.addLine(to: CGPoint(x: originX + 13, y: originY - 10))
        parallelogram.addLine(to: CGPoint(x: originX + cellSide2 + 13, y: originY - 10))
        parallelogram.addLine(to: CGPoint(x: originX + cellSide2, y: originY))
        parallelogram.close()
        
        cellColor2.setFill()
        
        parallelogram.fill()
        
        parallelogram.stroke()
        
    }

    // TODO
    
    
    func rightParallelogram(originX3: CGFloat, originY3: CGFloat, cellSide3: CGFloat, cellColor3: UIColor) {
        
        let rightParallelogram = UIBezierPath()
        
        rightParallelogram.move(to: CGPoint(x: originX3, y: originY3))
        rightParallelogram.addLine(to: CGPoint(x: originX3 + 13, y: originY3 - 10))
        rightParallelogram.addLine(to: CGPoint(x: originX3 + 38, y: originY3 + cellSide3 - 30))
        rightParallelogram.addLine(to: CGPoint(x: originX3, y: originY3 + cellSide3))
        
        rightParallelogram.stroke()
        
    }
 }
