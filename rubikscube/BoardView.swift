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
    let parallelogramSide: CGFloat = 75
    let parallelogramSide2: CGFloat = 70
    let cornerX: CGFloat = 125
    let cornerY: CGFloat = 375
    
    var board: Board = Board()
    
    override func draw(_ rect: CGRect) {

        board.white = ["G", "B", "O", "Y", "W", "R", "B", "G", "Y"]
        board.red = ["R", "W", "Y", "O", "R", "B", "W", "B", "G"]
        board.blue = ["B", "O", "G", "R", "B", "Y", "R", "O", "R"]
        board.green = ["O", "Y", "B", "W", "G", "R", "B", "G", "Y"]
        board.yellow = ["G", "R", "W", "G", "Y", "W", "O", "W", "O"]
        board.orange = ["Y", "G", "R", "B", "O", "G", "Y", "B", "W"]
        
        drawPiece(x: 0, y: 0, color: board.red[0])
        drawPiece(x: 1, y: 0, color: board.red[1])
        drawPiece(x: 2, y: 0, color: board.red[2])
        drawPiece(x: 0, y: 1, color: board.red[3])
        drawPiece(x: 1, y: 1, color: board.red[4])
        drawPiece(x: 2, y: 1, color: board.red[5])
        drawPiece(x: 0, y: 2, color: board.red[6])
        drawPiece(x: 1, y: 2, color: board.red[7])
        drawPiece(x: 2, y: 2, color: board.red[8])
        
        drawPieceParallelogram(x: 0, y: 0, color: board.blue[0])
        drawPieceParallelogram(x: 1, y: 0, color: board.blue[1])
        drawPieceParallelogram(x: 2, y: 0, color: board.blue[2])
        drawPieceParallelogram(x: 0, y: 1, color: board.blue[3])
        drawPieceParallelogram(x: 1, y: 1, color: board.blue[4])
        drawPieceParallelogram(x: 2, y: 1, color: board.blue[5])
        drawPieceParallelogram(x: 0, y: 2, color: board.blue[6])
        drawPieceParallelogram(x: 1, y: 2, color: board.blue[7])
        drawPieceParallelogram(x: 2, y: 2, color: board.blue[8])
        
        drawPieceParallelogram2(x: 0, y: 0, color: board.white[0])
        drawPieceParallelogram2(x: 1, y: 0, color: board.white[1])
        drawPieceParallelogram2(x: 2, y: 0, color: board.white[2])
        drawPieceParallelogram2(x: 0, y: 1, color: board.white[3])
        drawPieceParallelogram2(x: 1, y: 1, color: board.white[4])
        drawPieceParallelogram2(x: 2, y: 1, color: board.white[5])
        drawPieceParallelogram2(x: 0, y: 2, color: board.white[6])
        drawPieceParallelogram2(x: 1, y: 2, color: board.white[7])
        drawPieceParallelogram2(x: 2, y: 2, color: board.white[8])
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
        
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: cornerX + side * CGFloat(x), y: cornerY + side * CGFloat(y)))
        pen.addLine(to: CGPoint(x: cornerX + side * CGFloat(x), y: cornerY + side * CGFloat(y) + side))
        pen.addLine(to: CGPoint(x: cornerX + side * CGFloat(x) + side, y: cornerY + side * CGFloat(y) + side))
        pen.addLine(to: CGPoint(x: cornerX + side * CGFloat(x) + side, y: cornerY + side * CGFloat(y)))
        pen.close()
        
        UIColor.black.setStroke()
        
        pencil.stroke()
    }
    
    func drawPieceParallelogram(x: Int, y: Int, color: String) {
        let cornerXP: CGFloat = 425
        let cornerYP: CGFloat = 375
        
        // x 0
        // x 1 should go higher
        // x 2 should go even higher
        let pencil = UIBezierPath()
        
        if x == 0 {
            pencil.move(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y)))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) + 100))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) + 25))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 75))
            pencil.close()
        } else if x == 1 {
            pencil.move(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) - 75))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) + 25))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 50))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 150))
            pencil.close()
        } else if x == 2 {
            pencil.move(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) - 150))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) - 50))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 125))
            pencil.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 225))
            pencil.close()
        }
        
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
        
        let pen = UIBezierPath()
        
        if x == 0 {
            pen.move(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y)))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) + 100))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) + 25))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 75))
            pen.close()
        } else if x == 1 {
            pen.move(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) - 75))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) + 25))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 50))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 150))
            pen.close()
        } else if x == 2 {
            pen.move(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) - 150))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x), y: cornerYP + side * CGFloat(y) - 50))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 125))
            pen.addLine(to: CGPoint(x: cornerXP + parallelogramSide * CGFloat(x) + 75, y: cornerYP + side * CGFloat(y) - 225))
            pen.close()
        }
        UIColor.black.setStroke()
        
        pen.stroke()
    }
    
    func drawPieceParallelogram2(x: Int, y: Int, color: String) {
        let cornerXP: CGFloat = 335
        let cornerYP: CGFloat = 150
        
        let pencil = UIBezierPath()
        
        if y == 0 {
            pencil.move(to: CGPoint(x: cornerXP + side * CGFloat(x), y: cornerYP + parallelogramSide * CGFloat(y)))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 70, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + 40, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + 115, y: cornerYP + parallelogramSide * CGFloat(y)))
            pencil.close()
        } else if y == 1 {
            pencil.move(to: CGPoint(x: cornerXP + side * CGFloat(x) - 70, y: cornerYP + parallelogramSide * CGFloat(y)))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 140, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 35, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + 40, y: cornerYP + parallelogramSide * CGFloat(y)))
            pencil.close()
        } else if y == 2 {
            pencil.move(to: CGPoint(x: cornerXP + side * CGFloat(x) - 140, y: cornerYP + parallelogramSide * CGFloat(y)))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 210, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 110, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 35, y: cornerYP + parallelogramSide * CGFloat(y)))
            pencil.close()
        }
        
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
        
        let pen = UIBezierPath()
        
        if y == 0 {
            pen.move(to: CGPoint(x: cornerXP + side * CGFloat(x), y: cornerYP + parallelogramSide * CGFloat(y)))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 70, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + 40, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + 115, y: cornerYP + parallelogramSide * CGFloat(y)))
            pen.close()
        } else if y == 1 {
            pen.move(to: CGPoint(x: cornerXP + side * CGFloat(x) - 70, y: cornerYP + parallelogramSide * CGFloat(y)))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 140, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 35, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + 40, y: cornerYP + parallelogramSide * CGFloat(y)))
            pen.close()
        } else if y == 2 {
            pen.move(to: CGPoint(x: cornerXP + side * CGFloat(x) - 140, y: cornerYP + parallelogramSide * CGFloat(y)))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 210, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 110, y: cornerYP + parallelogramSide * CGFloat(y) + 75))
            pen.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 35, y: cornerYP + parallelogramSide * CGFloat(y)))
            pen.close()
        }
        
        UIColor.black.setStroke()
        
        pen.stroke()
    }
    
    
 }
