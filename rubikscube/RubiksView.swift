//
//  RubiksView.swift
//  rubikscube
//
//  Created by Kenneth Wu on 2022-01-06.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksView: UIView {
    
    var delegate: RubiksCubeDelegate?
    
    
    let gx: CGFloat = 110
    let gy: CGFloat = 150
    let cell: CGFloat = 150
    
    override func draw(_ rect: CGRect) {
        drawFrontFace()
        drawTopFace()
        drawRightFace()
        drawGrid()
        
    }
    
    func drawRightSquare(col: Int, row: Int, color: UIColor) {
        let pencil = UIBezierPath()
        let anchorX: CGFloat = gx + cell * 3
        let anchorY: CGFloat = gy
        
        
        pencil.move(to: CGPoint(x: anchorX + cell / 6 * CGFloat (col), y: anchorY - cell / 6 * CGFloat(col)))
        pencil.addLine(to: CGPoint(x: anchorX + cell / 6 + cell / 6 * CGFloat(col), y: anchorY - cell / 6 - cell / 6 * CGFloat(col)))
        pencil.addLine(to: CGPoint(x: anchorX + cell / 6 + cell / 6 * CGFloat(col), y: anchorY + cell - cell / 6 - cell / 6 * CGFloat(col)))
        pencil.addLine(to: CGPoint(x: anchorX + cell / 6 - cell / 6 + cell / 6 * CGFloat(col), y: anchorY + cell - cell / 6 + cell / 6 - cell / 6 * CGFloat(col)))
        pencil.close()
    
        
        color.setFill()
        pencil.fill()
        pencil.stroke()
    
    }
    
    func drawTopSquare(col: Int, row: Int, color: UIColor) {
        let pencil = UIBezierPath()
        let anchorX: CGFloat = gx + cell / 2 + cell * CGFloat(col) - cell / 6 * CGFloat(row)
        let anchorY: CGFloat = gy - cell / 2 + cell / 6 * CGFloat(row)
        
        pencil.move(to: CGPoint(x: anchorX, y: anchorY))
        pencil.addLine(to: CGPoint(x: anchorX + cell, y: anchorY))
        pencil.addLine(to: CGPoint(x: anchorX + cell - cell / 6, y: anchorY + cell / 6))
        pencil.addLine(to: CGPoint(x: anchorX - cell / 6 , y: anchorY + cell / 6))
        pencil.close()
        
        color.setFill()
        pencil.fill()
    }
    
    func drawRightFace() {
        drawRightSquare(col: 0, row: 0, color: .red)
        drawRightSquare(col: 1, row: 0, color: .green)
        drawRightSquare(col: 2, row: 2, color: .blue)
    }
    
    func drawTopFace() {
        for c in 0 ..< 3 {
            for r in 0 ..< 3 {
                let color = delegate!.colorU(col: c, row: r)
                let theirColor = colorToColor(color: color)
                
                drawTopSquare(col: c, row: r, color: theirColor)
                
            }
        }
    }
    
    func drawFrontFace() {
        for c in 0 ..< 3 {
            for r in 0 ..< 3 {
                let color = delegate!.colorF(col: c, row: r)
                let theirColor = colorToColor(color: color)
                
                drawFrontSquare(col: c, row: r, color: theirColor)
            }
        }
    }
    
    func colorToColor(color: CubeColor) -> UIColor {
        switch color {
        case .red:
            return .red
        case .white:
            return .white
        case .blue:
            return .blue
        case .orange:
            return .orange
        case .green:
            return .green
        case .yellow:
            return .yellow
        }
    }
    
    
    func drawFrontSquare(col: Int, row: Int, color: UIColor) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: gx + cell * CGFloat(col), y: gy + cell * CGFloat(row)))
        pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(col + 1), y: gy + cell * CGFloat(row)))
        pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(col + 1), y: gy + cell * CGFloat(row + 1)))
        pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(col), y: gy + cell * CGFloat(row + 1)))
        pencil.close()
        
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
