//
//  CubeView.swift
//  rubikscube
//
//  Created by Grace Huang on 1/23/20.
//  Copyright © 2020 Gold Thumb Inc. All rights reserved.
//

import UIKit

class CubeView: UIView {
    let squareSide: CGFloat = 104// 150
    let originX: CGFloat = 150
    let originY: CGFloat = 300
    var leftPointX: CGFloat = 2256546 - 23456789
    var rightPointX: CGFloat = 676879
    var pointY: CGFloat = 806997
    var shadowCube: RubikCubeModel = RubikCubeModel()
    var fromCol: Int = 673
    var fromRow: Int = 7384
    
    var delegate: CubeDelegate? = nil
    
    
    
    override func draw(_ rect: CGRect) {
        leftPointX = originX + 125
        rightPointX = originX + squareSide * 3 + 125
        pointY = originY - 120
        let path = UIBezierPath(rect: CGRect(x: originX, y: originY, width: squareSide * 3, height: squareSide * 3))
        
        drawCubeEdges()
        renderFront()
        renderTop()
        renderRight()
        drawFront()
        drawTop()
        drawRight()
        path.stroke()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let fingerlocation = touch.location(in: self)
        fromCol = Int((fingerlocation.x - originX) / squareSide)
        fromRow = Int((fingerlocation.y - originY) / squareSide)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let fingerlocation = touch.location(in: self)
        let toCol = Int((fingerlocation.x - originX) / squareSide)
        let toRow = Int((fingerlocation.y - originY) / squareSide)
        
        print("from (\(fromCol), \(fromRow)), to (\(toCol), \(toRow))")
        
        delegate?.swipe(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow)
    }
    
    func drawCubeEdges() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: originX, y: originY))
        path.addLine(to: CGPoint(x: leftPointX, y: pointY))
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY))
        path.addLine(to: CGPoint(x: leftPointX, y: pointY))
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide * 3))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY + squareSide * 3))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY))
        path.stroke()
    }
    
    func drawFront() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: originX + squareSide, y: originY))
        path.addLine(to: CGPoint(x: originX + squareSide, y: originY + squareSide * 3))
        path.move(to: CGPoint(x: originX + squareSide * 2, y: originY))
        path.addLine(to: CGPoint(x: originX + squareSide * 2, y: originY + squareSide * 3))
        path.move(to: CGPoint(x: originX, y: originY + squareSide))
        path.addLine(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide))
        path.move(to: CGPoint(x: originX, y: originY + squareSide * 2))
        path.addLine(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide * 2))
        path.stroke()
    }
    
    func drawTop() {
        let deltaX: CGFloat = (leftPointX - originX) / 3
        let deltaY: CGFloat = (pointY - originY) / 3
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: originX + squareSide, y: originY))
        path.addLine(to: CGPoint(x: leftPointX + squareSide, y: pointY))
        path.move(to: CGPoint(x: originX + squareSide * 2, y: originY))
        path.addLine(to: CGPoint(x: leftPointX + squareSide * 2, y: pointY))
        
        path.move(to: CGPoint(x: originX + deltaX, y: originY + deltaY))
        path.addLine(to: CGPoint(x: originX + deltaX + squareSide * 3, y: originY + deltaY))
        path.move(to: CGPoint(x: originX + deltaX * 2, y: originY + deltaY * 2))
        path.addLine(to: CGPoint(x: originX + deltaX * 2 + squareSide * 3, y: originY + deltaY * 2))

        path.stroke()
    }
        
    func drawRight() {
        let deltaX: CGFloat = (rightPointX - (originX + squareSide * 3)) / 3
        let deltaY: CGFloat = (pointY - originY) / 3
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY + squareSide))
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide * 2))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY + squareSide * 2))
        
        path.move(to: CGPoint(x: originX + deltaX + squareSide * 3, y: originY + deltaY))
        path.addLine(to: CGPoint(x: originX + deltaX + squareSide * 3, y: originY + deltaY + squareSide * 3))
        path.move(to: CGPoint(x: originX + deltaX * 2 + squareSide * 3, y: originY + deltaY * 2))
        path.addLine(to: CGPoint(x: originX + deltaX * 2 + squareSide * 3, y: originY + deltaY * 2 + squareSide * 3))
        
        path.stroke()
    }
        
    func renderFront() {
        frontSquare(col: 0, row: 0, color: shadowCube.frontFace[0])
        frontSquare(col: 1, row: 0, color: shadowCube.frontFace[1])
        frontSquare(col: 2, row: 0, color: shadowCube.frontFace[2])
        frontSquare(col: 0, row: 1, color: shadowCube.frontFace[3])
        frontSquare(col: 1, row: 1, color: shadowCube.frontFace[4])
        frontSquare(col: 2, row: 1, color: shadowCube.frontFace[5])
        frontSquare(col: 0, row: 2, color: shadowCube.frontFace[6])
        frontSquare(col: 1, row: 2, color: shadowCube.frontFace[7])
        frontSquare(col: 2, row: 2, color: shadowCube.frontFace[8])
    }
    
    func renderTop() {
        topSquare(col: 0, row: 0, color: shadowCube.topFace[0])
        topSquare(col: 1, row: 0, color: shadowCube.topFace[1])
        topSquare(col: 2, row: 0, color: shadowCube.topFace[2])
        topSquare(col: 0, row: 1, color: shadowCube.topFace[3])
        topSquare(col: 1, row: 1, color: shadowCube.topFace[4])
        topSquare(col: 2, row: 1, color: shadowCube.topFace[5])
        topSquare(col: 0, row: 2, color: shadowCube.topFace[6])
        topSquare(col: 1, row: 2, color: shadowCube.topFace[7])
        topSquare(col: 2, row: 2, color: shadowCube.topFace[8])
    }
    
    func renderRight() {
        rightSquare(col: 0, row: 0, color: shadowCube.rightFace[0])
        rightSquare(col: 1, row: 0, color: shadowCube.rightFace[1])
        rightSquare(col: 2, row: 0, color: shadowCube.rightFace[2])
        rightSquare(col: 0, row: 1, color: shadowCube.rightFace[3])
        rightSquare(col: 1, row: 1, color: shadowCube.rightFace[4])
        rightSquare(col: 2, row: 1, color: shadowCube.rightFace[5])
        rightSquare(col: 0, row: 2, color: shadowCube.rightFace[6])
        rightSquare(col: 1, row: 2, color: shadowCube.rightFace[7])
        rightSquare(col: 2, row: 2, color: shadowCube.rightFace[8])
    }
    
    func frontSquare(col: Int, row: Int, color: RubikCubeColor) {
        let pen = UIBezierPath(rect: CGRect(x: originX + CGFloat(col) * squareSide , y: originY + CGFloat(row) * squareSide, width: squareSide, height: squareSide))
        switch color {
        case .blue:
            #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setFill()
        case .green:
            #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        case .red:
            #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        case .orange:
            #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).setFill()
        case .white:
            #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
        case .yellow:
            #colorLiteral(red: 0.9968109727, green: 0.9844934344, blue: 0, alpha: 1).setFill()
        }
        pen.fill()
    }
    func topSquare(col: Int, row: Int, color: RubikCubeColor) {
        let path = UIBezierPath()
        let deltaX: CGFloat = (leftPointX - originX) / 3
        let deltaY: CGFloat = (originY - pointY) / 3
        let p0X = originX + deltaX * CGFloat(3 - row) + squareSide * CGFloat(col)
        let p0Y = originY - deltaY * CGFloat(3 - row)
        let p1X = originX + deltaX * CGFloat(3 - row) + squareSide * CGFloat(col + 1)
        let p1Y = p0Y
        let p2X = originX + deltaX * CGFloat(2 - row) + squareSide * CGFloat(col + 1)
        let p2Y = originY - deltaY * CGFloat(2 - row)
        let p3X = originX + deltaX * CGFloat(2 - row) + squareSide * CGFloat(col)
        let p3Y = p2Y
        
        path.move(to: CGPoint(x: p0X, y: p0Y))
        path.addLine(to: CGPoint(x: p1X, y: p1Y))
        path.addLine(to: CGPoint(x: p2X, y: p2Y))
        path.addLine(to: CGPoint(x: p3X, y: p3Y))
        path.close()
        switch color {
        case .blue:
            #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setFill()
        case .green:
            #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        case .red:
            #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        case .orange:
            #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).setFill()
        case .white:
            #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
        case .yellow:
            #colorLiteral(red: 0.9968109727, green: 0.9844934344, blue: 0, alpha: 1).setFill()
        }
        path.fill()
    }
    
    func rightSquare(col: Int, row: Int, color: RubikCubeColor) {
        let path = UIBezierPath()
        let newOriginX = originX + squareSide * 3
        let deltaX: CGFloat = (rightPointX - (originX + squareSide * 3)) / 3
        let deltaY: CGFloat = (originY - pointY) / 3
        let p0X = newOriginX + deltaX * CGFloat(col)
        let p0Y = originY + squareSide * CGFloat(row) - deltaY * CGFloat(col)
        let p1X = newOriginX + deltaX * CGFloat(col + 1)
        let p1Y = originY + squareSide * CGFloat(row) - deltaY * CGFloat(col + 1)
        let p2X = p1X
        let p2Y = originY + squareSide * CGFloat(row + 1) - deltaY * CGFloat(col + 1)
        let p3X = p0X
        let p3Y = originY + squareSide * CGFloat(row + 1) - deltaY * CGFloat(col)
        
        path.move(to: CGPoint(x: p0X, y: p0Y))
        path.addLine(to: CGPoint(x: p1X, y: p1Y))
        path.addLine(to: CGPoint(x: p2X, y: p2Y))
        path.addLine(to: CGPoint(x: p3X, y: p3Y))
        path.close()
        
        switch color {
        case .blue:
            #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setFill()
        case .green:
            #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        case .red:
            #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        case .orange:
            #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).setFill()
        case .white:
            #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
        case .yellow:
            #colorLiteral(red: 0.9968109727, green: 0.9844934344, blue: 0, alpha: 1).setFill()
        }
        path.fill()
    }
}
