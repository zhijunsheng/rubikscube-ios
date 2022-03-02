 //
//  BoardView.swift
//  rubikscube
//
//  Created by Peter Shi on 2019-07-27.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

 class BoardView: UIView {
//J'aime le pop parce que la musique est energique
//Je trouve la musique de
//J
//J'aime le chanson parce que la melodie est compliquee
    
    let side: CGFloat = 100
    let cornerX: CGFloat = 150
    let cornerY: CGFloat = 275
    var cubeDelagate: CubeDelegate?
    
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
        if Int((realThing.x - cornerX) / side) < 3 && realThing.y - cornerY >= 0 {
            let startX = Int((realThing.x - cornerX) / side)
            let startY = Int((realThing.y - cornerY) / side)
            let endX = Int((loc.x - cornerX) / side)
            let endY = Int((loc.y - cornerY) / side)
            print("front (\(startX), \(startY)) to (\(endX), \(endY))")
            cubeDelagate?.turnCube(startX: startX, startY: startY, endX: endX, endY: endY)
        } else if Int(((realThing.x - cornerX) + (realThing.y - cornerY)) / side) < 3 && realThing.y - cornerY < 0 {
            let startX = Int(((realThing.x - cornerX) + (realThing.y - cornerY)) / side)
            let startY = Int((realThing.y - (cornerY - (side * 0.5) * 3)) / (side / 2)) - 3
            let endX = Int(((loc.x - cornerX) + (loc.y - cornerY)) / side)
            let endY = Int((loc.y - (cornerY - (side * 0.5) * 3)) / (side / 2)) - 3
            print("top (\(startX), \(startY)) to (\(endX), \(endY))")
            cubeDelagate?.turnCube(startX: startX, startY: startY, endX: endX, endY: endY)
        } else if Int((realThing.x - cornerX) / side) >= 3 && Int((realThing.y - cornerY) / side) >= 0 {
            let startX = 3 + Int(((realThing.x - cornerX) - side * 3) / side * 2)
            let startY = Int(((realThing.y - cornerY) + ((realThing.x - cornerX) - side * 3)) / side)
            let endX = 3 + Int(((loc.x - cornerX) - side * 3) / side * 2)
            let endY = Int(((loc.y - cornerY) + ((loc.x - cornerX) - side * 3)) / side)
            print("right (\(startX), \(startY)) to (\(endX), \(endY))")
            cubeDelagate?.turnCube(startX: startX, startY: startY, endX: endX, endY: endY)
        }
    }
    
    override func draw(_ rect: CGRect) {
          
        drawPiece(x: 0, y: 0, color: (cubeDelagate?.front(index: 0))!)
        drawPiece(x: 1, y: 0, color: (cubeDelagate?.front(index: 1))!)
        drawPiece(x: 2, y: 0, color: (cubeDelagate?.front(index: 2))!)
        drawPiece(x: 0, y: 1, color: (cubeDelagate?.front(index: 3))!)
        drawPiece(x: 1, y: 1, color: (cubeDelagate?.front(index: 4))!)
        drawPiece(x: 2, y: 1, color: (cubeDelagate?.front(index: 5))!)
        drawPiece(x: 0, y: 2, color: (cubeDelagate?.front(index: 6))!)
        drawPiece(x: 1, y: 2, color: (cubeDelagate?.front(index: 7))!)
        drawPiece(x: 2, y: 2, color: (cubeDelagate?.front(index: 8))!)

        drawPieceParallelogram(x: 0, y: 0, color: (cubeDelagate?.top(index: 0))!)
        drawPieceParallelogram(x: 1, y: 0, color: (cubeDelagate?.top(index: 1))!)
        drawPieceParallelogram(x: 2, y: 0, color: (cubeDelagate?.top(index: 2))!)
        drawPieceParallelogram(x: 0, y: 1, color: (cubeDelagate?.top(index: 3))!)
        drawPieceParallelogram(x: 1, y: 1, color: (cubeDelagate?.top(index: 4))!)
        drawPieceParallelogram(x: 2, y: 1, color: (cubeDelagate?.top(index: 5))!)
        drawPieceParallelogram(x: 0, y: 2, color: (cubeDelagate?.top(index: 6))!)
        drawPieceParallelogram(x: 1, y: 2, color: (cubeDelagate?.top(index: 7))!)
        drawPieceParallelogram(x: 2, y: 2, color: (cubeDelagate?.top(index: 8))!)

        drawPieceParallelogram2(x: 0, y: 0, color: (cubeDelagate?.right(index: 0))!)
        drawPieceParallelogram2(x: 1, y: 0, color: (cubeDelagate?.right(index: 1))!)
        drawPieceParallelogram2(x: 2, y: 0, color: (cubeDelagate?.right(index: 2))!)
        drawPieceParallelogram2(x: 0, y: 1, color: (cubeDelagate?.right(index: 3))!)
        drawPieceParallelogram2(x: 1, y: 1, color: (cubeDelagate?.right(index: 4))!)
        drawPieceParallelogram2(x: 2, y: 1, color: (cubeDelagate?.right(index: 5))!)
        drawPieceParallelogram2(x: 0, y: 2, color: (cubeDelagate?.right(index: 6))!)
        drawPieceParallelogram2(x: 1, y: 2, color: (cubeDelagate?.right(index: 7))!)
        drawPieceParallelogram2(x: 2, y: 2, color: (cubeDelagate?.right(index: 8))!)
        
    }
    
    func drawPiece(x: Int, y: Int, color: CubeColor) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: cornerX + side * CGFloat(x), y: cornerY + side * CGFloat(y)))
        pencil.addLine(to: CGPoint(x: cornerX + side * CGFloat(x), y: cornerY + side * CGFloat(y) + side))
        pencil.addLine(to: CGPoint(x: cornerX + side * CGFloat(x) + side, y: cornerY + side * CGFloat(y) + side))
        pencil.addLine(to: CGPoint(x: cornerX + side * CGFloat(x) + side, y: cornerY + side * CGFloat(y)))
        pencil.close()

        if color == .W {
            UIColor.white.setFill()
        } else if color == .R {
            UIColor.red.setFill()
        } else if color == .B {
            UIColor.blue.setFill()
        } else if color == .G {
            UIColor.green.setFill()
        } else if color == .Y {
            UIColor.yellow.setFill()
        } else if color == .O {
            UIColor.orange.setFill()
        } else {
            UIColor.groupTableViewBackground.setFill()
        }
        pencil.fill()
        
        UIColor.black.setStroke()
        
        pencil.stroke()
    }
    
    func drawPieceParallelogram2(x: Int, y: Int, color: CubeColor) {
        let cornerXP: CGFloat = cornerX + side * 3 // 425
        let cornerYP: CGFloat = cornerY
        
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: cornerXP + 0.50 * side * CGFloat(x), y: cornerYP + side * CGFloat(y) - CGFloat(x) * 0.5 * side))
        pencil.addLine(to: CGPoint(x: cornerXP + 0.50 * side * CGFloat(x), y: cornerYP + side * CGFloat(y) + 100 - CGFloat(x) * 0.5 * side))
        pencil.addLine(to: CGPoint(x: cornerXP + 0.50 * side * CGFloat(x) + 50, y: cornerYP + side * CGFloat(y) + 50 - CGFloat(x) * 0.5 * side))
        pencil.addLine(to: CGPoint(x: cornerXP + 0.50 * side * CGFloat(x) + 50, y: cornerYP + side * CGFloat(y) - 50 - CGFloat(x) * 0.5 * side))
        pencil.close()
        //hi
        if color == .W {
            UIColor.white.setFill()
        } else if color == .R {
            UIColor.red.setFill()
        } else if color == .B {
            UIColor.blue.setFill()
        } else if color == .G {
            UIColor.green.setFill()
        } else if color == .Y {
            UIColor.yellow.setFill()
        } else if color == .O {
            UIColor.orange.setFill()
        } else {
            UIColor.groupTableViewBackground.setFill()
        }
        pencil.fill()
        
        UIColor.black.setStroke()
        pencil.stroke()
        

    }
    
    func drawPieceParallelogram(x: Int, y: Int, color: CubeColor) {
        let cornerXP: CGFloat = cornerX + (side * 0.5) * 3
        let cornerYP: CGFloat = cornerY - (side * 0.5) * 3
        let pencil = UIBezierPath()
        
        // 0.5 * side
        pencil.move(to: CGPoint(x: cornerXP + side * CGFloat(x) - CGFloat(y) * 0.5 * side, y: cornerYP + side * 0.5 * CGFloat(y)))
        pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) - 0.5 * side - CGFloat(y) * 0.5 * side, y: cornerYP + side * 0.5 * CGFloat(y) + 50))
        pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + 0.5 * side - CGFloat(y) * 0.5 * side, y: cornerYP + side * 0.5 * CGFloat(y) + 50))
        pencil.addLine(to: CGPoint(x: cornerXP + side * CGFloat(x) + side - CGFloat(y) * 0.5 * side, y: cornerYP + side * 0.5 * CGFloat(y)))
        pencil.close()
        
        if color == .W {
            UIColor.white.setFill()
        } else if color == .R {
            UIColor.red.setFill()
        } else if color == .B {
            UIColor.blue.setFill()
        } else if color == .G {
            UIColor.green.setFill()
        } else if color == .Y {
            UIColor.yellow.setFill()
        } else if color == .O {
            UIColor.orange.setFill()
        } else {
            UIColor.groupTableViewBackground.setFill()
        }
        pencil.fill()
        
        pencil.stroke()
        
    }
    
 }
