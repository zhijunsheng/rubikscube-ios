 //
//  BoardView.swift
//  rubikscube
//
//  Created by Peter Shi on 2019-07-27.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

 class BoardView: UIView {
    
    var board: Board = Board()
    
    override func draw(_ rect: CGRect) {

        board.white = ["G", "B", "O", "Y", "W", "R", "B", "G", "Y"]
        board.red = ["G", "B", "O", "Y", "R", "R", "B", "G", "Y"]
        board.blue = ["G", "B", "O", "Y", "B", "R", "B", "G", "Y"]
        board.green = ["G", "B", "O", "Y", "G", "R", "B", "G", "Y"]
        board.yellow = ["G", "B", "O", "Y", "Y", "R", "B", "G", "Y"]
        board.orange = ["G", "B", "O", "Y", "O", "R", "B", "G", "Y"]
        
        drawPiece(x: 200 - 75, y: 300 + 75, color: board.red[0])
        drawPiece(x: 300 - 75, y: 300 + 75, color: board.red[1])
        drawPiece(x: 400 - 75, y: 300 + 75, color: board.red[2])
        drawPiece(x: 200 - 75, y: 400 + 75, color: board.red[3])
        drawPiece(x: 300 - 75, y: 400 + 75, color: board.red[4])
        drawPiece(x: 400 - 75, y: 400 + 75, color: board.red[5])
        drawPiece(x: 200 - 75, y: 500 + 75, color: board.red[6])
        drawPiece(x: 300 - 75, y: 500 + 75, color: board.red[7])
        drawPiece(x: 400 - 75, y: 500 + 75, color: board.red[8])
        drawPieceParallelogram(x: 500 - 75, y: 300 + 75, color: board.blue[0])
        drawPieceParallelogram(x: 575 - 75, y: 225 + 75, color: board.blue[1])
        drawPieceParallelogram(x: 650 - 75, y: 150 + 75, color: board.blue[2])
        drawPieceParallelogram(x: 500 - 75, y: 400 + 75, color: board.blue[3])
        drawPieceParallelogram(x: 575 - 75, y: 325 + 75, color: board.blue[4])
        drawPieceParallelogram(x: 650 - 75, y: 250 + 75, color: board.blue[5])
        drawPieceParallelogram(x: 500 - 75, y: 500 + 75, color: board.blue[6])
        drawPieceParallelogram(x: 575 - 75, y: 425 + 75, color: board.blue[7])
        drawPieceParallelogram(x: 650 - 75, y: 350 + 75, color: board.blue[8])
        drawPieceParallelogram2(x: 345, y: 150, color: board.white[0])
        drawPieceParallelogram2(x: 445, y: 150, color: board.white[1])
        drawPieceParallelogram2(x: 545, y: 150, color: board.white[2])
        drawPieceParallelogram2(x: 345 - 75, y: 225, color: board.white[3])
        drawPieceParallelogram2(x: 445 - 75, y: 225, color: board.white[4])
        drawPieceParallelogram2(x: 545 - 75, y: 225, color: board.white[5])
        drawPieceParallelogram2(x: 270 - 75, y: 300, color: board.white[6])
        drawPieceParallelogram2(x: 370 - 75, y: 300, color: board.white[7])
        drawPieceParallelogram2(x: 470 - 75, y: 300, color: board.white[8])
    }
    
    func drawPiece(x: Int, y: Int, color: String) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x, y: y + 100))
        pencil.addLine(to: CGPoint(x: x + 100, y: y + 100))
        pencil.addLine(to: CGPoint(x: x + 100, y: y))
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
    }
    
    func drawPieceParallelogram(x: Int, y: Int, color: String) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x, y: y + 100))
        pencil.addLine(to: CGPoint(x: x + 75, y: y + 25))
        pencil.addLine(to: CGPoint(x: x + 75, y: y - 75))
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
    }
    
    func drawPieceParallelogram2(x: Int, y: Int, color: String) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: x, y: y))
        pencil.addLine(to: CGPoint(x: x - 70, y: y + 75))
        pencil.addLine(to: CGPoint(x: x + 30, y: y + 75))
        pencil.addLine(to: CGPoint(x: x + 105, y: y))
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
    }
 }
