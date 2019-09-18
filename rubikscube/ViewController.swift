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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.cubeDelagate = self
        
        boardView.board.up = ["W", "W", "W", "W", "W", "W", "W", "W", "W"]
        boardView.board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        boardView.board.right = ["B", "B", "B", "B", "B", "B", "B", "B", "B"]
        boardView.board.left = ["G", "G", "G", "G", "G", "G", "G", "G", "G"]
        boardView.board.down = ["Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y"]
        boardView.board.back = ["O", "O", "O", "O", "O", "O", "O", "O", "O"]
        
//        boardView.board.up = ["B", "B", "B", "B", "B", "B", "B", "B", "B"]
//        boardView.board.front = ["B", "B", "B", "B", "B", "B", "B", "B", "B"]
//        boardView.board.right = ["B", "B", "B", "B", "B", "B", "B", "B", "B"]
//        boardView.board.left = ["B", "B", "B", "B", "B", "B", "B", "B", "B"]
//        boardView.board.down = ["B", "B", "B", "B", "B", "B", "B", "B", "B"]
//        boardView.board.back = ["B", "B", "B", "B", "B", "B", "G", "B", "B"]
    }

    @IBAction func turnU(_ sender: UIButton) {
        boardView.board.turnU()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnUPrime(_ sender: UIButton) {
        boardView.board.turnUPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnD(_ sender: UIButton) {
        boardView.board.turnD()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnDPrime(_ sender: UIButton) {
        boardView.board.turnDPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnR(_ sender: UIButton) {
        boardView.board.turnR()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnRPrime(_ sender: UIButton) {
        boardView.board.turnRPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnL(_ sender: UIButton) {
        boardView.board.turnL()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnLPrime(_ sender: UIButton) {
        boardView.board.turnLPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnF(_ sender: UIButton) {
        boardView.board.turnF()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnFPrime(_ sender: UIButton) {
        boardView.board.turnFPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnB(_ sender: UIButton) {
        boardView.board.turnB()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnBPrime(_ sender: UIButton) {
        boardView.board.turnBPrime()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func scramble(_ sender: UIButton) {
        boardView.board.scramble()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func turnX(_ sender: UIButton) {
        boardView.board.turnX()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        reset()
        boardView.setNeedsDisplay()
    }
    
    func turnCube(startX: Int, startY: Int, endX: Int, endY: Int) {
        //        print("I M     A     D E L E G A T E     !!!")
        if startX == 2 && startY == 0 && endX == 0 && endY == 0 {
            boardView.board.turnU()
        } else if startX == 0 && startY == 0 && endX == 2 && endY == 0 {
            boardView.board.turnUPrime()
        } else if startX == 0 && startY == 2 && endX == 2 && endY == 2 {
            boardView.board.turnD()
        } else if startX == 2 && startY == 2 && endX == 0 && endY == 2 {
            boardView.board.turnDPrime()
        } else if startX == 0 && startY == 0 && endX == 0 && endY == 2 {
            boardView.board.turnL()
        } else if startX == 0 && startY == 2 && endX == 0 && endY == 0 {
            boardView.board.turnL()
        } else if startX == 2 && startY == 0 && endX == 2 && endY == 2 {
            boardView.board.turnR()
        } else if startX == 2 && startY == 2 && endX == 2 && endY == 0 {
            boardView.board.turnRPrime()
        } else if startX == 1 && startY == 0 && endX == 2 && endY == 1 {
            boardView.board.turnF()
        } else if startX == 0 && startY == 2 && endX == 0 && endY == 0 {
            boardView.board.turnL()
        }
        boardView.setNeedsDisplay()
    }
    
    
    
    func reset() {
        boardView.board.up = ["W", "W", "W", "W", "W", "W", "W", "W", "W"]
        boardView.board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        boardView.board.right = ["B", "B", "B", "B", "B", "B", "B", "B", "B"]
        boardView.board.left = ["G", "G", "G", "G", "G", "G", "G", "G", "G"]
        boardView.board.down = ["Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y"]
        boardView.board.back = ["O", "O", "O", "O", "O", "O", "O", "O", "O"]
        boardView.setNeedsDisplay()
    }
}

