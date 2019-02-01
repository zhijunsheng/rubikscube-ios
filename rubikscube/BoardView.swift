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
    

        let leftSquare = UIBezierPath()
        
        leftSquare.move(to: CGPoint(x: 100, y: 150))
        leftSquare.addLine(to: CGPoint(x: 120, y: 150))
        leftSquare.addLine(to: CGPoint(x: 120, y: 170))
        leftSquare.addLine(to: CGPoint(x: 100, y: 170))
        leftSquare.addLine(to: CGPoint(x: 100, y: 148))
        
        leftSquare.move(to: CGPoint(x: 120, y: 150))
        leftSquare.addLine(to: CGPoint(x: 120, y: 170))
        
        leftSquare.stroke()
        
        UIColor.red.setFill()
        leftSquare.fill()
        
        
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

        parallelogram.move(to: CGPoint(x: 99, y: 149))
        parallelogram.addLine(to: CGPoint(x: 113, y: 140))
        parallelogram.addLine(to: CGPoint(x: 132, y: 140))
        parallelogram.addLine(to: CGPoint(x: 119, y: 149))
        
        UIColor.blue.setFill()
        parallelogram.fill()
    
        parallelogram.move(to: CGPoint(x: 119, y: 149))
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

    }
 }
