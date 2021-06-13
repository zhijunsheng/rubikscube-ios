//
//  BoardView.swift
//  rubikscube
//
//  Created by Angie Yan on 2021-06-09.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {


    override func draw(_ rect: CGRect) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 180, y: 300))
        line.addLine(to: CGPoint(x: 180, y: 460))
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        line.stroke()
        
        let line1 = UIBezierPath()
        line1.move(to: CGPoint(x: 320, y: 340))
        line1.addLine(to: CGPoint(x: 320, y: 500))
        line1.stroke()
        
        let line2 = UIBezierPath()
        line2.move(to: CGPoint(x: 460, y: 300))
        line2.addLine(to: CGPoint(x: 460, y: 460))
        line2.stroke()
        
        let line3 = UIBezierPath()
        line3.move(to: CGPoint(x: 180, y: 300))
        line3.addLine(to: CGPoint(x: 320, y: 340))
        line3.stroke()
        
        let line4 = UIBezierPath()
        line4.move(to: CGPoint(x: 320, y: 340))
        line4.addLine(to: CGPoint(x: 460, y: 300))
        line4.stroke()
        
        let line5 = UIBezierPath()
        line5.move(to: CGPoint(x: 180, y: 460))
        line5.addLine(to: CGPoint(x: 320, y: 500))
        line5.stroke()
        
        let line6 = UIBezierPath()
        line6.move(to: CGPoint(x: 320, y: 500))
        line6.addLine(to: CGPoint(x: 460, y: 460))
        line6.stroke()
        
        let line7 = UIBezierPath()
        line7.move(to: CGPoint(x: 180, y: 300))
        line7.addLine(to: CGPoint(x: 320, y: 340 - 80))
        line7.stroke()
        
        let line8 = UIBezierPath()
        line8.move(to: CGPoint(x: 460, y: 300))
        line8.addLine(to: CGPoint(x: 320, y: 340 - 80))
        line8.stroke()
    
    }
}
