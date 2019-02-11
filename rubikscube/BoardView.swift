//
//  BoardView.swift
//  rubikscube
//
//  Created by Cody Wang on 2019-02-01.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

 class BoardView: UIView {
    
    let cellSideValue: CGFloat = 60
    let cubeOriginX: CGFloat = 45
    let cubeOriginY: CGFloat = 45
    let cubeoriginX2: CGFloat = 45
    let cubeoriginY2: CGFloat = 45
    let cubeoriginX3: CGFloat = 225
    let cubeoriginY3: CGFloat = 45
    
    
    override func draw(_ rect: CGRect) {

        for i in 0..<3 {
            for j in 0..<3 {
                drawSquare(originX: cubeOriginX + cellSideValue * CGFloat(i), originY: cubeOriginY + cellSideValue * CGFloat(j), cellSide: cellSideValue, cellColor: UIColor.blue)
            }
        }

        
        for x in 0..<3 {
            parallogramRow(originX2: cubeoriginX2 + cellSideValue * CGFloat(x), originY2: cubeoriginY2, cellSide2: cellSideValue, cellColor2: UIColor.red)
        }
        
        for a in 0..<3 {
            rightParallelogram(originX3: cubeoriginX3 + cellSideValue * CGFloat(a), originY3: cubeoriginY3, cellSide3: cellSideValue, cellColor3: UIColor.white)
        }
    }
    
// Square

    
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
    
    // Parallelogram
    
    
    func parallogramRow(originX2: CGFloat, originY2: CGFloat, cellSide2: CGFloat, cellColor2: UIColor) {
       
        let parallelogram = UIBezierPath()
        
        parallelogram.move(to: CGPoint(x: originX2, y: originY2))
        parallelogram.addLine(to: CGPoint(x: originX2 + 13, y: originY2 - 10))
        parallelogram.addLine(to: CGPoint(x: originX2 + cellSide2 + 13, y: originY2 - 10))
        parallelogram.addLine(to: CGPoint(x: originX2 + cellSide2, y: originY2))
        parallelogram.close()
       
        parallelogram.move(to: CGPoint(x: originX2 + 13, y: originY2 - 10))
        parallelogram.addLine(to: CGPoint(x: originX2 + 26, y: originY2 - 20))
        parallelogram.addLine(to: CGPoint(x: originX2 + cellSide2 + 26, y: originY2 - 20))
        parallelogram.addLine(to: CGPoint(x: originX2 + cellSide2 + 13, y: originY2 - 10))
        parallelogram.close()
        
        parallelogram.move(to: CGPoint(x: originX2 + 26, y: originY2 - 20))
        parallelogram.addLine(to: CGPoint(x: originX2 + 38, y: originY2 - 30))
        parallelogram.addLine(to: CGPoint(x: originX2 + cellSide2 + 38, y: originY2 - 30))
        parallelogram.addLine(to: CGPoint(x: originX2 + cellSide2 + 26, y: originY2 - 20))
        parallelogram.close()
        
        cellColor2.setFill()
        
        parallelogram.fill()
        
        parallelogram.stroke()
        
    }

    // Right Parallelogram
    
    
    func rightParallelogram(originX3: CGFloat, originY3: CGFloat, cellSide3: CGFloat, cellColor3: UIColor) {
        
        let rightParallelogram = UIBezierPath()
        
        rightParallelogram.move(to: CGPoint(x: originX3, y: originY3))
        rightParallelogram.addLine(to: CGPoint(x: originX3 + 13, y: originY3 - 10))
        rightParallelogram.addLine(to: CGPoint(x: originX3 + 38, y: originY3 + cellSide3 - 30))
        rightParallelogram.addLine(to: CGPoint(x: originX3, y: originY3 + cellSide3))
        
        rightParallelogram.stroke()
        
    }
 }
