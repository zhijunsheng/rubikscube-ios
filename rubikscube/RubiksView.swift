//
//  RubiksView.swift
//  rubikscube
//
//  Created by Kenneth Wu on 2022-01-06.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksView: UIView {
    
    let gx: CGFloat = 50
    let gy: CGFloat = 200
    let cell: CGFloat = 100
    
    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSquare(col: 0, row: 0, color: .red)
        drawSquare(col: 1, row: 0, color: .green)
        drawSquare(col: 2, row: 2, color: .cyan)
    }
    
    func drawSquare(col: Int, row: Int, color: UIColor) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: gx + cell * CGFloat(col), y: gy + cell * CGFloat(row)))
        pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(col + 1), y: gy + cell * CGFloat(row)))
        pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(col + 1), y: gy + cell * CGFloat(row + 1)))
        pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(col), y: gy + cell * CGFloat(row + 1)))
        pencil.close()
        
        pencil.stroke()
        color.setFill()
        pencil.fill()
    }
    
    func drawGrid()  {
        
        let pencil = UIBezierPath()
        
        //front face
        
        //horizontal lines
        for i in 0 ..< 4 {
            pencil.move(to: CGPoint(x: gx + cell * CGFloat(i), y: gy))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(i), y: gy + cell * 3))
        }
        //vertical lines
        for i in 0 ..< 4 {
            pencil.move(to: CGPoint(x: gx, y: gy + cell * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: gx + cell * 3, y: gy + cell * CGFloat(i)))
            
        }
        
        //top face
        for i in 0 ..< 4 {
            pencil.move(to: CGPoint(x: gx + cell / 2 + cell * CGFloat(i), y: gy - cell / 2))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(i), y: gy ))
            
        }
        
        pencil.move(to: CGPoint(x: gx + cell / 2, y: gy - cell / 2))
        pencil.addLine(to: CGPoint(x: gx + cell/2 + cell * 3, y: gy - cell / 2))
        
        pencil.move(to: CGPoint(x: gx + cell / 6, y: gy - cell / 6))
        pencil.addLine(to: CGPoint(x: gx + cell / 6 + cell * 3 , y: gy - cell / 6))
        
        pencil.move(to: CGPoint(x: gx + cell / 3, y: gy - cell / 3))
        pencil.addLine(to: CGPoint(x: gx + cell / 3 + cell * 3 , y: gy - cell / 3))
        
        //right face
        
        for i in 0 ..< 3 {
            pencil.move(to: CGPoint(x: gx + cell * 3, y: gy + cell * 3 - cell * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: gx + cell * 3 + cell / 2, y: gy + cell * 3 - cell / 2 - cell * CGFloat(i)))
        }
        
        for i in 0 ..< 3 {
            pencil.move(to: CGPoint(x: gx + cell * 3 + cell / 6 * CGFloat(i + 1), y: gy - cell / 6 * CGFloat(i + 1)))
            pencil.addLine(to: CGPoint(x: gx + cell * 3 + cell / 6 * CGFloat(i + 1), y: gy + cell * 3 - cell / 6 * CGFloat(i + 1)))
        }
        
        pencil.stroke()
    }
}
