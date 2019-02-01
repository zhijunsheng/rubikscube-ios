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
        
        let path2 = UIBezierPath()
        let path3 = UIBezierPath()
        let path4 = UIBezierPath()
        let path5 = UIBezierPath()
        
        path2.move(to: CGPoint(x: 100, y: 150))
        path2.addLine(to: CGPoint(x: 120, y: 150))
        path2.addLine(to: CGPoint(x: 120, y: 170))
        path2.addLine(to: CGPoint(x: 100, y: 170))
        path2.addLine(to: CGPoint(x: 100, y: 148))
        
        path2.move(to: CGPoint(x: 120, y: 150))
        path2.addLine(to: CGPoint(x: 120, y: 170))
        
        path2.stroke()
        
        UIColor.red.setFill()
        path2.fill()
        
        path3.move(to: CGPoint(x: 120, y: 150))
        path3.addLine(to: CGPoint(x: 140, y: 150))
        path3.addLine(to: CGPoint(x: 140, y: 170))
        path3.addLine(to: CGPoint(x: 120, y: 170))
        path3.addLine(to: CGPoint(x: 120, y: 150))
        
        path3.stroke()
        
        UIColor.red.setFill()
        path3.fill()
        
        path4.move(to: CGPoint(x: 99, y: 149))
        path4.addLine(to: CGPoint(x: 113, y: 140))
        path4.addLine(to: CGPoint(x: 132, y: 140))
        path4.addLine(to: CGPoint(x: 119, y: 149))
        
        UIColor.blue.setFill()
        path4.fill()
        
        path4.move(to: CGPoint(x: 119, y: 149))
        path4.addLine(to: CGPoint(x: 132, y: 140))
        path4.addLine(to: CGPoint(x: 152, y: 140))
        path4.addLine(to: CGPoint(x: 140, y: 149))
        
        UIColor.blue.setFill()
        path4.fill()
        
        path4.stroke()
        
        path5.move(to: CGPoint(x: 152, y: 140))
        path5.addLine(to: CGPoint(x: 152, y: 160))
        path5.addLine(to: CGPoint(x: 140, y: 170))
        path5.addLine(to: CGPoint(x: 140, y: 150))
        
        UIColor.yellow.setFill()
        path5.fill()
        
        path5.stroke()

    }
 }
