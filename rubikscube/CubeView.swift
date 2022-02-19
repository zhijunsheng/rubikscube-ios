//
//  CubeView.swift
//  rubikscube
//
//  Created by Harry Shen on 8/28/21.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit

class CubeView: UIView {
    let sideP: CGFloat = 50
    let sideL: CGFloat = 150
    let startPointX: CGFloat = 450
    let startPointY: CGFloat = 400
    var colBegin: Int = -1
    var rowBegin: Int = -1
    var delegate: CubeDelegate? = nil
    
    override func draw(_ rect: CGRect) {
        //test()
        //turn(clockwise: true)
        drawModel()
        drawFrontFace()
        drawRightFace()
        drawUpFace()
    }
    
    func turn(clockwise: Bool) {
        delegate?.topRowTurn(clockwise: clockwise)
    }
    
    func test() {
        delegate?.test()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let finger = touch.location(in: self)
        colBegin = Int((finger.x-startPointX)/(sideP * sqrt(3)))
        rowBegin = Int(abs(finger.x - startPointX + sqrt(3) * ((finger.y-startPointY )))/180)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let finger = touch.location(in: self)
        let col = Int((finger.x-startPointX)/(sideP * sqrt(3)))
        let row = Int(abs(finger.x - startPointX + sqrt(3) * ((finger.y-startPointY )))/180)
        //delegate?.topRowTurn(clockwise: <#T##Bool#>)
        if(row-rowBegin == 0){
            if col-colBegin>0 {
                delegate?.topRowTurn(clockwise: false)
            }
            else{
                delegate?.topRowTurn(clockwise: true)
            }
        }
        print("From \(colBegin) \(rowBegin) to \(col) \(row)")
        
        // (((((3 + 19) / (100 * 23) % ))))
    }
    
    func drawFrontPiece(col: Int, row: Int,color: CubeColor){
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        convertColor(color: color).setFill()
        let hi:CGFloat = CGFloat(col)*sideP*sqrt(3)
        let vi:CGFloat = CGFloat(row)*sideP*2 + CGFloat(col)*sideP
        let startPointXRight = startPointX - sideL * sqrt(3)
        let startPointYRight = startPointY - sideL
        let frontPiece = UIBezierPath()
        frontPiece.move(to: CGPoint(x: startPointXRight + hi, y: startPointYRight + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight + sideP * sqrt(3) + hi, y: startPointYRight + sideP + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight + sideP * sqrt(3) + hi, y: startPointYRight + 3 * sideP + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight + hi, y: startPointYRight + 2 * sideP + vi))
        frontPiece.close()
        frontPiece.stroke()
        frontPiece.fill()
    }
    func drawRightPiece(col: Int, row: Int, color: CubeColor) {
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        convertColor(color: color).setFill()
        let hi:CGFloat = CGFloat(col)*sideP*sqrt(3)
        let vi:CGFloat = CGFloat(row)*sideP*2 - CGFloat(col)*sideP
        let startPointXRight = startPointX
        let startPointYRight = startPointY
        let frontPiece = UIBezierPath()
        frontPiece.move(to: CGPoint(x: startPointXRight + hi, y: startPointYRight + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight + sideP * sqrt(3) + hi, y: startPointYRight - sideP + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight + sideP * sqrt(3) + hi, y: startPointYRight + sideP + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight + hi, y: startPointYRight + 2 * sideP + vi))
        frontPiece.close()
        frontPiece.stroke()
        frontPiece.fill()
    }
    func drawUpPiece(col: Int, row: Int,color: CubeColor){
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        convertColor(color: color).setFill()
        let hi:CGFloat = CGFloat(col)*sideP*sqrt(3)-CGFloat(row)*sideP*sqrt(3)
        let vi:CGFloat = CGFloat(row)*sideP + CGFloat(col)*sideP
        let startPointXRight = startPointX
        let startPointYRight = startPointY - 6 * sideP
        let frontPiece = UIBezierPath()
        frontPiece.move(to: CGPoint(x: startPointXRight + hi, y: startPointYRight + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight + sideP * sqrt(3) + hi, y: startPointYRight + sideP + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight + hi, y: startPointYRight + 2 * sideP + vi))
        frontPiece.addLine(to: CGPoint(x: startPointXRight - sideP * sqrt(3) + hi, y: startPointYRight + sideP + vi))
        frontPiece.close()
        frontPiece.stroke()
        frontPiece.fill()
    }
    func convertColor(color: CubeColor) -> UIColor {
        switch color {
        case .white:
            return .white
        case .red:
            return .red
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
    func drawModel() {
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
    
    func drawFrontFace() {
        for col in 0..<3 {
            for row in 0..<3 {
                if let color = delegate?.getPieceColorFrontFace(col: col, row: row) {
                    drawFrontPiece(col: col, row: row, color: color)
                }
                
            }
        }
    }
    func drawRightFace() {
        for col in 0..<3 {
            for row in 0..<3 {
                if let color = delegate?.getPieceColorRightFace(col: col, row: row) {
                    drawRightPiece(col: col, row: row, color: color)
                }
                
            }
        }
    }
    func drawUpFace() {
        for col in 0..<3 {
            for row in 0..<3 {
                if let color = delegate?.getPieceColorUpFace(col: col, row: row) {
                    drawUpPiece(col: col, row: row, color: color)
                }
            }
        }
    }
}
