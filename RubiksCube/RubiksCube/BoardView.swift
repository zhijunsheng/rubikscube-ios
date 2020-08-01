//
//  CanvasView.swift
//  RubiksCube
//
//  Created by Zhijun Sheng on 2020-06-06.
//  Copyright © 2020 Zhijun Sheng. All rights reserved.
//

import UIKit

class BoardView: UIView {
    var originX: CGFloat = -150
    var originY: CGFloat = -300
    var squareSide: CGFloat = -100
    
    var rubiksCubeDelegate: RubiksCubeDelegate? = nil
    
    var shadowTopFace: [CubeColor] = []
    var shadowFrontFace: [CubeColor] = []
    var shadowRightFace:[CubeColor] = []
    
    var fromCol: Int = -1
    var fromRow: Int = -1

    override func draw(_ rect: CGRect) {
        originX = 0.025 * bounds.width
        originY = 0.34 * bounds.height
        squareSide = 0.21 * bounds.width
        
        drawFront()
        drawTop()
        drawRight()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let firstTouch = touches.first!
        let fingerLocation = firstTouch.location(in: self)
        fromCol = Int(floor((fingerLocation.x - originX) / squareSide))
        fromRow = Int(floor((fingerLocation.y - originY) / squareSide))
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let firstTouch = touches.first!
        let fingerLocation = firstTouch.location(in: self)
        let toCol: Int = Int(floor((fingerLocation.x - originX) / squareSide))
        let toRow: Int = Int(floor((fingerLocation.y - originY) / squareSide))
        
        rubiksCubeDelegate?.moveFinger(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow)
    }
    
    func drawFront() {
        drawSquare(col: 0, row: 0, color: shadowFrontFace[0])
        drawSquare(col: 1, row: 0, color: shadowFrontFace[1])
        drawSquare(col: 2, row: 0, color: shadowFrontFace[2])

        drawSquare(col: 0, row: 1, color: shadowFrontFace[3])
        drawSquare(col: 1, row: 1, color: shadowFrontFace[4])
        drawSquare(col: 2, row: 1, color: shadowFrontFace[5])
        
        drawSquare(col: 0, row: 2, color: shadowFrontFace[6])
        drawSquare(col: 1, row: 2, color: shadowFrontFace[7])
        drawSquare(col: 2, row: 2, color: shadowFrontFace[8])
    }
    
    func drawTop() {
        drawTopParallelogram(col: 0, row: 0, color: shadowTopFace[0])
        drawTopParallelogram(col: 1, row: 0, color: shadowTopFace[1])
        drawTopParallelogram(col: 2, row: 0, color: shadowTopFace[2])
        
        drawTopParallelogram(col: 0, row: 1, color: shadowTopFace[3])
        drawTopParallelogram(col: 1, row: 1, color: shadowTopFace[4])
        drawTopParallelogram(col: 2, row: 1, color: shadowTopFace[5])
        
        drawTopParallelogram(col: 0, row: 2, color: shadowTopFace[6])
        drawTopParallelogram(col: 1, row: 2, color: shadowTopFace[7])
        drawTopParallelogram(col: 2, row: 2, color: shadowTopFace[8])
    }
    
    func drawRight() {
        drawRightParallelogram(col: 0, row: 0, color: shadowRightFace[0])
        drawRightParallelogram(col: 1, row: 0, color: shadowRightFace[1])
        drawRightParallelogram(col: 2, row: 0, color: shadowRightFace[2])
     
        drawRightParallelogram(col: 0, row: 1, color: shadowRightFace[3])
        drawRightParallelogram(col: 1, row: 1, color: shadowRightFace[4])
        drawRightParallelogram(col: 2, row: 1, color: shadowRightFace[5])
        
        drawRightParallelogram(col: 0, row: 2, color: shadowRightFace[6])
        drawRightParallelogram(col: 1, row: 2, color: shadowRightFace[7])
        drawRightParallelogram(col: 2, row: 2, color: shadowRightFace[8])
    }
    
    func drawRightParallelogram(col: Int, row: Int, color: CubeColor) {
        colorOf(color: color).setFill()
        
        let topLeftX: CGFloat = originX + 3 * squareSide + CGFloat(col) * squareSide/2
        let topLeftY: CGFloat = originY - CGFloat(col) * squareSide/2 + CGFloat(row) * squareSide
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: topLeftX, y: topLeftY))
        path.addLine(to: CGPoint(x: topLeftX + squareSide/2, y: topLeftY - squareSide/2))
        path.addLine(to: CGPoint(x: topLeftX + squareSide/2, y: topLeftY + squareSide/2))
        path.addLine(to: CGPoint(x: topLeftX, y: topLeftY + squareSide))
        path.close()
        path.fill()
        path.stroke()
    }
    
    func drawTopParallelogram(col: Int, row: Int, color: CubeColor) {
        colorOf(color: color).setFill()
        
        let bottomLeftX: CGFloat = originX + CGFloat(col) * squareSide + CGFloat(2 - row) * squareSide/2
        let bottomLeftY: CGFloat = originY + CGFloat(row - 2) * squareSide/2
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bottomLeftX, y: bottomLeftY))
        path.addLine(to: CGPoint(x: bottomLeftX + squareSide/2, y: bottomLeftY - squareSide/2))
        path.addLine(to: CGPoint(x: bottomLeftX + squareSide/2 + squareSide, y: bottomLeftY - squareSide/2))
        path.addLine(to: CGPoint(x: bottomLeftX + squareSide, y: bottomLeftY))
        path.close()
        path.fill()
        path.stroke()
    }

    func drawSquare(col: Int, row: Int, color: CubeColor) {
        colorOf(color: color).setFill()
        let squareX: CGFloat = originX + CGFloat(col) * squareSide
        let squareY: CGFloat = originY + CGFloat(row) * squareSide
        let square = UIBezierPath(rect: CGRect(x: squareX, y: squareY, width: squareSide, height: squareSide))
        square.fill()
        square.stroke()
    }
    
    func colorOf(color: CubeColor) -> UIColor {
        var c: UIColor = .black
        switch color {
        case .blue:
            c = UIColor.blue
        case .green:
            c = UIColor.green
        case .orange:
            c = UIColor.orange
        case .red:
            c = UIColor.red
        case .white:
            c = UIColor.white
        case .yellow:
            c = UIColor.yellow
        }
        return c
    }
}
