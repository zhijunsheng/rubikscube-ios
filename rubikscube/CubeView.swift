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
    var realCube: RubikCubeModel = RubikCubeModel()
    
    override func draw(_ rect: CGRect) {
        leftPointX = originX + 125
        rightPointX = originX + squareSide * 3 + 125
        pointY = originY - 120
        let path = UIBezierPath(rect: CGRect(x: originX, y: originY, width: squareSide * 3, height: squareSide * 3))
        
//        realCube.leftPrime()
        
        drawCubeEdges()
        renderFront()
        renderTop()
        drawFront()
        drawTop()
        drawRight()
        path.stroke()
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
        // tmp code for debugging
        realCube.frontFace = [.blue, .green, .blue, .green, .blue, .green, .green, .green, .green]
        
        frontSquare(col: 0, row: 0, color: realCube.frontFace[0])
        frontSquare(col: 1, row: 0, color: realCube.frontFace[1])
        frontSquare(col: 2, row: 0, color: realCube.frontFace[2])
        frontSquare(col: 0, row: 1, color: realCube.frontFace[3])
        frontSquare(col: 1, row: 1, color: realCube.frontFace[4])
        frontSquare(col: 2, row: 1, color: realCube.frontFace[5])
        frontSquare(col: 0, row: 2, color: realCube.frontFace[6])
        frontSquare(col: 1, row: 2, color: realCube.frontFace[7])
        frontSquare(col: 2, row: 2, color: realCube.frontFace[8])
    }
    
    func renderTop() {
        realCube.topFace = [.blue, .green, .blue, .green, .blue, .green, .green, .green, .green]
        
        topSquare(col: 0, row: 0, color: realCube.topFace[0])
        topSquare(col: 1, row: 0, color: realCube.topFace[1])
        topSquare(col: 2, row: 0, color: realCube.topFace[2])
        topSquare(col: 0, row: 1, color: realCube.topFace[3])
        topSquare(col: 1, row: 1, color: realCube.topFace[4])
        topSquare(col: 2, row: 1, color: realCube.topFace[5])
        topSquare(col: 0, row: 2, color: realCube.topFace[6])
        topSquare(col: 1, row: 2, color: realCube.topFace[7])
        topSquare(col: 2, row: 2, color: realCube.topFace[8])
    }
    
//    func renderRight() {
//        <#function body#>
//    }
    func frontSquare(col: Int, row: Int, color: RubikCubeColor) {
        let pen = UIBezierPath(rect: CGRect(x: originX + CGFloat(col) * squareSide , y: originY + CGFloat(row) * squareSide, width: squareSide, height: squareSide))
        switch color {
        case .blue:
            #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setFill()
        case .green:
            #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        case .red:
            break
        case .orange:
            break
        case .white:
            break
        case .yellow:
            break
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
            #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setFill()
        case .orange:
            break
        case .white:
            break
        case .yellow:
            break
        }
        path.fill()
    }
}
