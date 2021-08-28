//
//  CubeView.swift
//  rubikscube
//
//  Created by Harry Shen on 8/28/21.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit

class CubeView: UIView {
    
    let sideL: CGFloat = 150
    let startPointX: CGFloat = 450
    let startPointY: CGFloat = 400
    
    override func draw(_ rect: CGRect) {
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        let front = UIBezierPath()
        front.move(to: CGPoint(x: startPointX, y: startPointY))
        front.addLine(to: CGPoint(x: startPointX - sideL * sqrt(3), y: startPointY - sideL))
        front.addLine(to: CGPoint(x: startPointX - sideL * sqrt(3), y: startPointY + sideL))
        front.addLine(to: CGPoint(x: startPointX, y: startPointY + 2 * sideL))
        front.close()
        front.stroke()
        
        let right = UIBezierPath()
        right.move(to: CGPoint(x: startPointX, y: startPointY))
        right.addLine(to: CGPoint(x: startPointX + sideL * sqrt(3), y: startPointY - sideL))
        right.addLine(to: CGPoint(x: startPointX + sideL * sqrt(3), y: startPointY + sideL))
        right.addLine(to: CGPoint(x: startPointX, y: startPointY + 2 * sideL))
        right.close()
        right.stroke()
        
        let top = UIBezierPath()
        top.move(to: CGPoint(x: startPointX + sideL * sqrt(3), y: startPointY - sideL))
        top.addLine(to: CGPoint(x: startPointX, y: startPointY - sideL * 2))
        top.addLine(to: CGPoint(x: startPointX - sideL * sqrt(3), y: startPointY - sideL))
        top.stroke()
        
        
        
    }
    

}
