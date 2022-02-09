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
    
    
    var gx: CGFloat = 110
    var gy: CGFloat = 150 
    var cell: CGFloat = 150
    var beginCol: Int = -1
    var beginRow: Int = -2
    
    override func draw(_ rect: CGRect) {
        cell = bounds.width / 4
        gx = (bounds.width - cell * 3.5) / 2
        gy = (bounds.height - cell * 2.5) / 2
        
        drawFrontFace()
        drawTopFace()
        drawRightFace()
        drawGrid()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let finger = touch.location(in: self)
        beginCol = Int((finger.x - gx) / cell)
        beginRow = Int((finger.y - gy) / cell)
        if finger.y < gy {
            beginRow = beginRow - 1
        }
        if finger.x < gx {
            beginCol = beginCol - 1
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let finger = touch.location(in: self)
        var endCol: Int = Int((finger.x - gx) / cell)
        var endRow: Int = Int((finger.y - gy) / cell)
        if finger.y < gy {
            endRow = endRow - 1
        }
        if finger.x < gx {
            endCol = endCol - 1
        }

        if beginCol == 2 && beginRow == 0 && endCol == 0 && endRow == 0 {
            delegate?.U()
        }
        if beginCol == 0 && beginRow == 0 && endCol == 2 && endRow == 0{
            delegate?.UUU()
        }
        if beginCol == 1 && beginRow == 0 && endCol == 2 && endRow == 1 {
            delegate?.F()
        }
        if  beginCol == 2 && beginRow == 1 && endCol == 1 && endRow == 0{
            delegate?.FFF()
        }
        if beginCol == 0 && beginRow == 2 && endCol == 2 && endRow == 2 {
            delegate?.D()
        }
        if beginCol == 2 && beginRow == 2 && endCol == 0 && endRow == 2 {
            delegate?.DDD()
        }
        if  beginCol == 2 && beginRow == 2 && endCol == 2 && endRow == 0{
            delegate?.R()
        }
        if beginCol == 2 && beginRow == 0 && endCol == 2 && endRow == 2 {
            delegate?.RRR()
        }
        if beginCol == 0 && beginRow == 0 && endCol == 0 && endRow == 2 {
            delegate?.L()
        }
        if beginCol == 0 && beginRow == 2 && endCol == 0 && endRow == 0 {
            delegate?.LLL()
        }
        if beginCol == 1 && beginRow == 0 && endCol == 1 && endRow < 0 {
            delegate?.moveCubeU()
        }
        if beginCol == 1 && beginRow == 2 && endCol == 1 && endRow > 2 {
            delegate?.moveCubeD()
        }
        if beginCol == 2 && beginRow == 1 && endCol > 2 && endRow == 1 {
            delegate?.moveCubeR()
        }
        if beginCol == 0 && beginRow == 1 && endCol < 0 && endRow == 1 {
            delegate?.moveCubeL()
        }
        if beginCol == 1 && beginRow == 2 && endCol == 1 && endRow == 0 {
            delegate?.MU()
        }
        if beginCol == 1 && beginRow == 0 && endCol == 1 && endRow == 2 {
            delegate?.MD()
        }
        if beginCol == 2 && beginRow == 1 && endCol == 0 && endRow == 1 {
            delegate?.ML()
        }
        if beginCol == 0 && beginRow == 1 && endCol == 2 && endRow == 1 {
            delegate?.MR()
        }
        
    }
    
    func drawRightSquare(col: Int, row: Int, color: UIColor) {
        let pencil = UIBezierPath()
        let anchorX: CGFloat = gx + cell * 3 + cell / 6 * CGFloat(col)
        let anchorY: CGFloat = gy - cell / 6 * CGFloat(col) + cell * CGFloat(row)

        
        pencil.move(to: CGPoint(x: anchorX, y: anchorY))
        pencil.addLine(to: CGPoint(x: anchorX + cell / 6, y: anchorY - cell / 6))
        pencil.addLine(to: CGPoint(x: anchorX + cell / 6, y: anchorY + cell - cell / 6))
        pencil.addLine(to: CGPoint(x: anchorX + cell / 6 - cell / 6, y: anchorY + cell - cell / 6 + cell / 6))
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
        
        for c in 0 ..< 3 {
            for r in 0 ..< 3 {
                let color = delegate!.colorR(col: c, row: r)
                let theirColor = colorToColor(color: color)

                drawRightSquare(col: c, row: r, color: theirColor)

            }
        }
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
