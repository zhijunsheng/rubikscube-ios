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
    
        drawSquare(originX: 100, originY: 150, cellSide: 50, cellColor: UIColor.blue)
        drawSquare(originX: 120, originY: 150, cellSide: 50, cellColor: UIColor.blue)
        drawSquare(originX: 140, originY: 150, cellSide: 50, cellColor: UIColor.red)
        drawSquare(originX: 100, originY: 170, cellSide: 50, cellColor: UIColor.blue)
        drawSquare(originX: 120, originY: 170, cellSide: 50, cellColor: UIColor.blue)
        drawSquare(originX: 140, originY: 170, cellSide: 50, cellColor: UIColor.blue)
        drawSquare(originX: 100, originY: 190, cellSide: 50, cellColor: UIColor.blue)
        drawSquare(originX: 120, originY: 190, cellSide: 50, cellColor: UIColor.blue)
        drawSquare(originX: 140, originY: 190, cellSide: 50, cellColor: UIColor.blue)
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
