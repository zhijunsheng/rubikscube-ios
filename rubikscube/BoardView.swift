 //
//  BoardView.swift
//  rubikscube
//
//  Created by Cody Wang on 2019-02-01.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

 class BoardView: UIView {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
    
        let cellSideValue: CGFloat = 45
        let cubeOriginX: CGFloat = 31
        let cubeOriginY: CGFloat = 03
        
        for i in 0..<3 {
            drawSquare(originX: cubeOriginX + cellSideValue * CGFloat(i), originY: cubeOriginY, cellSide: cellSideValue, cellColor: UIColor.blue)
        }
        
        for i in 0..<3 {
            drawSquare(originX: cubeOriginX + cellSideValue * CGFloat(i), originY: cubeOriginY + cellSideValue, cellSide: cellSideValue, cellColor: UIColor.blue)
        }
        
        for i in 0..<3 {
            drawSquare(originX: cubeOriginX + cellSideValue * CGFloat(i), originY: cubeOriginY + cellSideValue * 2, cellSide: cellSideValue, cellColor: UIColor.blue)
        }

        /*
        let rightSquare = UIBezierPath()

        rightSquare.move(to: CGPoint(x: 120, y: 150))
        rightSquare.addLine(to: CGPoint(x: 140, y: 150))
        rightSquare.addLine(to: CGPoint(x: 140, y: 170))
        rightSquare.addLine(to: CGPoint(x: 120, y: 170))
        rightSquare.addLine(to: CGPoint(x: 120, y: 150))
        
        rightSquare.stroke()
        
        UIColor.red.setFill()
        rightSquare.fill()
        
        
        let parallelogram = UIBezierPath()

        parallelogram.move(to: CGPoint(x: 100, y: 150))
        parallelogram.addLine(to: CGPoint(x: 113, y: 140))
        parallelogram.addLine(to: CGPoint(x: 132, y: 140))
        parallelogram.addLine(to: CGPoint(x: 120, y: 150))
        
        UIColor.blue.setFill()
        parallelogram.fill()
    
        parallelogram.move(to: CGPoint(x: 120, y: 150))
        parallelogram.addLine(to: CGPoint(x: 132, y: 140))
        parallelogram.addLine(to: CGPoint(x: 152, y: 140))
        parallelogram.addLine(to: CGPoint(x: 140, y: 149))
        
        UIColor.blue.setFill()
        parallelogram.fill()
        
        parallelogram.stroke()
        
        
        let yellowParallelogram = UIBezierPath()

        yellowParallelogram.move(to: CGPoint(x: 152, y: 140))
        yellowParallelogram.addLine(to: CGPoint(x: 152, y: 160))
        yellowParallelogram.addLine(to: CGPoint(x: 140, y: 170))
        yellowParallelogram.addLine(to: CGPoint(x: 140, y: 150))
        
        UIColor.yellow.setFill()
        yellowParallelogram.fill()
        
        yellowParallelogram.stroke()
*/
    }

    
//    drawSquare(originX: 100, originY: 150, cellSide: 50, cellColor: UIColor.blue)
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
 }
