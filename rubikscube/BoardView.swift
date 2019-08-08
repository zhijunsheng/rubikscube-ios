 //
//  BoardView.swift
//  rubikscube
//
//  Created by Peter Shi on 2019-07-27.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

 class BoardView: UIView {
    
    let side: CGFloat = 100
    let cornerX: CGFloat = 150
    let cornerY: CGFloat = 275
    
    var board: Board = Board()
    
    var thing: CGPoint? = nil
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        thing = touch.location(in: self)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let loc = touch.location(in: self)
        guard let realThing = thing else {
            return
        }
        
        let startX = Int((realThing.x - cornerX) / side)
        let startY = Int((realThing.y - cornerY) / side)
        let endX = Int((loc.x - cornerX) / side)
        let endY = Int((loc.y - cornerY) / side)
        print("(\(startX), \(startY)) to (\(endX), \(endY))")
    }
    
    override func draw(_ rect: CGRect) {
        
        drawPiece(x: 0, y: 0, color: board.front[0])
        drawPiece(x: 1, y: 0, color: board.front[1])
        drawPiece(x: 2, y: 0, color: board.front[2])
        drawPiece(x: 0, y: 1, color: board.front[3])
        drawPiece(x: 1, y: 1, color: board.front[4])
        drawPiece(x: 2, y: 1, color: board.front[5])
        drawPiece(x: 0, y: 2, color: board.front[6])
        drawPiece(x: 1, y: 2, color: board.front[7])
        drawPiece(x: 2, y: 2, color: board.front[8])
        
        drawPieceParallelogram(x: 0, y: 0, color: board.up[0])
        drawPieceParallelogram(x: 1, y: 0, color: board.up[1])
        drawPieceParallelogram(x: 2, y: 0, color: board.up[2])
        drawPieceParallelogram(x: 0, y: 1, color: board.up[3])
        drawPieceParallelogram(x: 1, y: 1, color: board.up[4])
        drawPieceParallelogram(x: 2, y: 1, color: board.up[5])
        drawPieceParallelogram(x: 0, y: 2, color: board.up[6])
        drawPieceParallelogram(x: 1, y: 2, color: board.up[7])
        drawPieceParallelogram(x: 2, y: 2, color: board.up[8])
        
        drawPieceParallelogram2(x: 0, y: 0, color: board.right[0])
        drawPieceParallelogram2(x: 1, y: 0, color: board.right[1])
        drawPieceParallelogram2(x: 2, y: 0, color: board.right[2])
        drawPieceParallelogram2(x: 0, y: 1, color: board.right[3])
        drawPieceParallelogram2(x: 1, y: 1, color: board.right[4])
        drawPieceParallelogram2(x: 2, y: 1, color: board.right[5])
        drawPieceParallelogram2(x: 0, y: 2, color: board.right[6])
        drawPieceParallelogram2(x: 1, y: 2, color: board.right[7])
        drawPieceParallelogram2(x: 2, y: 2, color: board.right[8])
        
    }
    
    func drawPiece(x: Int, y: Int, color: String) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: cornerX + side * CGFloat(x), y: cornerY + side * CGFloat(y)))
        pencil.addLine(to: CGPoint(x: cornerX + side * CGFloat(x), y: cornerY + side * CGFloat(y) + side))
        pencil.addLine(to: CGPoint(x: cornerX + side * CGFloat(x) + side, y: cornerY + side * CGFloat(y) + side))
        pencil.addLine(to: CGPoint(x: cornerX + side * CGFloat(x) + side, y: cornerY + side * CGFloat(y)))
        pencil.close()

        if color == "W" {
            UIColor.white.setFill()
        } else if color == "R" {
            UIColor.red.setFill()
        } else if color == "B" {
            UIColor.blue.setFill()
        } else if color == "G" {
            UIColor.green.setFill()
        } else if color == "Y" {
            UIColor.yellow.setFill()
        } else if color == "O" {
            UIColor.orange.setFill()
        } else {
            UIColor.groupTableViewBackground.setFill()
        }
        pencil.fill()
        
        UIColor.black.setStroke()
        
        pencil.stroke()
    }
    
    func drawPieceParallelogram2(x: Int, y: Int, color: String) {
        let cornerXP: CGFloat = cornerX + side * 3 // 425
        let cornerYP: CGFloat = cornerY
        
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: cornerXP + 0.50 * side * CGFloat(x), y: cornerYP + side * CGFloat(y) - CGFloat(x) * 0.5 * side))
        pencil.addLine(to: CGPoint(x: cornerXP + 0.50 * side * CGFloat(x), y: cornerYP + side * CGFloat(y) + 100 - CGFloat(x) * 0.5 * side))
        pencil.addLine(to: CGPoint(x: cornerXP + 0.50 * side * CGFloat(x) + 50, y: cornerYP + side * CGFloat(y) + 50 - CGFloat(x) * 0.5 * side))
        pencil.addLine(to: CGPoint(x: cornerXP + 0.50 * side * CGFloat(x) + 50, y: cornerYP + side * CGFloat(y) - 50 - CGFloat(x) * 0.5 * side))
        pencil.close()
        //hi
        if color == "W" {
            UIColor.white.setFill()
        } else if color == "R" {
            UIColor.red.setFill()
        } else if color == "B" {
            UIColor.blue.setFill()
        } else if color == "G" {
            UIColor.green.setFill()
        } else if color == "Y" {
            UIColor.yellow.setFill()
        } else if color == "O" {
            UIColor.orange.setFill()
        } else {
            UIColor.groupTableViewBackground.setFill()
        }
        pencil.fill()
        
        UIColor.black.setStroke()
        pencil.stroke()
        

    }
    
    func drawPieceParallelogram(x: Int, y: Int, color: String) {
        let cornerXP: CGFloat = cornerX + (side * 0.5) * 3
        let cornerYP: CGFloat = cornerY - (side * 0.5) * 3
        let pencil = UIBezierPath()
        
        // 0.5 * side
        pencil.move(to: CGPoint(x: cornerXP + side * CGFloat(x) - CGFloat(y) * 0.5 * side, y: cornerYP + side * 0.5 * CGFloat(y)))
        pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 0.5 * side - CGFloat(y) * 0.5 * side, y: cornerYP + side * 0.5 * CGFloat(y) + 50))
        pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + 0.5 * side - CGFloat(y) * 0.5 * side, y: cornerYP + side * 0.5 * CGFloat(y) + 50))
        pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + side - CGFloat(y) * 0.5 * side, y: cornerYP + side * 0.5 * CGFloat(y)))
        pencil.close()
        
        if color == "W" {
            UIColor.white.setFill()
        } else if color == "R" {
            UIColor.red.setFill()
        } else if color == "B" {
            UIColor.blue.setFill()
        } else if color == "G" {
            UIColor.green.setFill()
        } else if color == "Y" {
            UIColor.yellow.setFill()
        } else if color == "O" {
            UIColor.orange.setFill()
        } else {
            UIColor.groupTableViewBackground.setFill()
        }
        pencil.fill()
        
        pencil.stroke()
        
    }
    
 }
