//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CubeDelegate {
   
    @IBOutlet weak var boardView: BoardView!
    var board: Board = Board()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.cubeDelagate = self
        
        reset()
        
//        boardView.board.setColor(color: "O")
//        boardView.board.left[5] = "B"
////        boardView.board.front[6] = "B"
////        boardView.board.left[6] = "B"
////        boardView.board.left[7] = "G"
////        boardView.board.back[6] = "R"
////        boardView.board.back[7] = "B"
////        boardView.board.left[8] = "G"
    }

    @IBAction func turnU(_ sender: UIButton) {
        board.turnU()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnUPrime(_ sender: UIButton) {
        board.turnUPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnD(_ sender: UIButton) {
        board.turnD()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnDPrime(_ sender: UIButton) {
        board.turnDPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnR(_ sender: UIButton) {
        board.turnR()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnRPrime(_ sender: UIButton) {
        board.turnRPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnL(_ sender: UIButton) {
        board.turnL()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnLPrime(_ sender: UIButton) {
        board.turnLPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnF(_ sender: UIButton) {
        board.turnF()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnFPrime(_ sender: UIButton) {
        board.turnFPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnB(_ sender: UIButton) {
        board.turnB()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnBPrime(_ sender: UIButton) {
        board.turnBPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func scramble(_ sender: UIButton) {
        board.scramble()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnX(_ sender: UIButton) {
        board.turnX()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnXPrime(_ sender: UIButton) {
        board.turnXPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        reset()
        boardView.setNeedsDisplay()
    }
    
    func turnCube(startX: Int, startY: Int, endX: Int, endY: Int) {
        //        print("I M     A     D E L E G A T E     !!!")
        if startX == 2 && startY == 0 && endX == 0 && endY == 0 {
            board.turnU()
        } else if startX == 0 && startY == 0 && endX == 2 && endY == 0 {
            board.turnUPrime()
        } else if startX == 0 && startY == 2 && endX == 2 && endY == 2 {
            board.turnD()
        } else if startX == 2 && startY == 2 && endX == 0 && endY == 2 {
            board.turnDPrime()
        } else if startX == 0 && startY == 0 && endX == 0 && endY == 2 {
            board.turnL()
        } else if startX == 0 && startY == 2 && endX == 0 && endY == 0 {
            board.turnLPrime()
        } else if startX == 2 && startY == 2 && endX == 2 && endY == 0 {
            board.turnR()
        } else if startX == 2 && startY == 0 && endX == 2 && endY == 2 {
            board.turnRPrime()
        } else if startX == 1 && startY == 0 && endX == 2 && endY == 1 {
            board.turnF()
        } else if startX == 2 && startY == 1 && endX == 1 && endY == 0 {
            board.turnFPrime()
        } else if startX == 0 && startY == 2 && endX == 0 && endY == 0 {
            board.turnL()
        }
        boardView.setNeedsDisplay()
    }
    
    func front(index: Int) -> CubeColor {
        return board.front[index]
    }
    
    func top(index: Int) -> CubeColor {
        return board.up[index]
    }
    
    func right(index: Int) -> CubeColor {
        return board.right[index]
    }
    
    func reset() {
        board.reset()
        boardView.setNeedsDisplay()
    }
}

