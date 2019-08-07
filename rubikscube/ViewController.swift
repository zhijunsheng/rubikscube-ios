//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        boardView.board.up = ["W", "W", "W", "W", "W", "W", "W", "W", "W"]
        boardView.board.front = ["R", "R", "R", "R", "R", "R", "R", "R", "R"]
        boardView.board.right = ["B", "B", "B", "B", "B", "B", "B", "B", "B"]
        boardView.board.left = ["G", "G", "G", "G", "G", "G", "G", "G", "G"]
        boardView.board.down = ["Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y"]
        boardView.board.back = ["O", "O", "O", "O", "O", "O", "O", "O", "O"]
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
}

