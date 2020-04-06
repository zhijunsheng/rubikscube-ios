//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CubeDelegate{
    var realCube: RubikCubeModel = RubikCubeModel()

    @IBOutlet weak var cubeView: CubeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cubeView.shadowCube = realCube
        cubeView.delegate = self
    }
    
    func swipe(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        print("(\(fromCol), \(fromRow))  (\(toCol), \(toRow))")
        guard let gesture = inputSquares(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow) else {
            return
        }
        
        switch gesture {
        case .turnCounter:
            realCube.turnCounterCW()
        case .facePrime:
            realCube.facePrime()
        case .leftPrime:
            realCube.leftPrime()
        case .leftTurn:
            realCube.leftTurn()
        case .rightPrime:
            realCube.rightPrime()
        case .rightTurn:
            realCube.rightTurn()
        case .turnClock:
            realCube.turnCW()
        case .faceClock:
            realCube.facePrime()
            realCube.facePrime()
            realCube.facePrime()
        case .downTurn:
            realCube.downTurn()
        case .downPrime:
            realCube.downTurn()
            realCube.downTurn()
            realCube.downTurn()
        case .topTurn:
            realCube.topTurn()
        case .topPrime:
            realCube.topTurn()
            realCube.topTurn()
            realCube.topTurn()
        }
        updateShadow()
    }
    
    func inputSquares(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) -> RubikCubeGesture? {
        if  fromCol == 0 && fromRow == 1 && toCol == 2 && toRow == 1 {
            return .turnCounter
        } else if fromCol == 2 && fromRow == 1 && toCol == 0 && toRow == 1 {
            return .turnClock
        } else if fromCol == 2 && fromRow == 1 && toCol == 1 && toRow == 0 ||
                  fromCol == 1 && fromRow == 0 && toCol == 0 && toRow == 1 ||
                  fromCol == 0 && fromRow == 1 && toCol == 1 && toRow == 2 ||
                  fromCol == 1 && fromRow == 2 && toCol == 2 && toRow == 1 {
            return .facePrime
        } else if fromCol == 1 && fromRow == 0 && toCol == 2 && toRow == 1 ||
                  fromCol == 2 && fromRow == 1 && toCol == 1 && toRow == 2 ||
                  fromCol == 1 && fromRow == 2 && toCol == 0 && toRow == 1 ||
                  fromCol == 0 && fromRow == 1 && toCol == 1 && toRow == 0 {
            return .faceClock
        } else if fromCol == 0 && fromRow == 2 && toCol == 0 && toRow == 0 ||
                  fromCol == 0 && fromRow == 1 && toCol == 0 && toRow == 0 {
            return .leftPrime
        } else if fromCol == 0 && fromRow == 0 && toCol == 0 && toRow == 2 ||
                  fromCol == 0 && fromRow == 0 && toCol == 0 && toRow == 1 {
            return .leftTurn
        } else if fromCol == 2 && fromRow == 0 && toCol == 2 && toRow == 2 ||
                  fromCol == 2 && fromRow == 0 && toCol == 2 && toRow == 1 {
            return .rightPrime
        } else if fromCol == 2 && fromRow == 2 && toCol == 2 && toRow == 0 ||
                  fromCol == 2 && fromRow == 1 && toCol == 2 && toRow == 0{
            return .rightTurn
        } else if fromCol == 0 && fromRow == 2 && toCol == 2 && toRow == 2 ||
                  fromCol == 0 && fromRow == 2 && toCol == 1 && toRow == 2 ||
                  fromCol == 1 && fromRow == 2 && toCol == 2 && toRow == 2 {
            return .downTurn
        } else if fromCol == 2 && fromRow == 2 && toCol == 0 && toRow == 2 ||
                  fromCol == 2 && fromRow == 2 && toCol == 1 && toRow == 2 {
            return .downPrime
        } else if fromCol == 2 && fromRow == 0 && toCol == 0 && toRow == 0 ||
                  fromCol == 2 && fromRow == 0 && toCol == 1 && toRow == 0 {
            return .topTurn
        } else if fromCol == 0 && fromRow == 0 && toCol == 2 && toRow == 0 ||
                  fromCol == 0 && fromRow == 0 && toCol == 1 && toRow == 0 {
            return .topPrime
        }
            
        return nil
    }
    
    func updateShadow() {
        cubeView.shadowCube = realCube
        cubeView.setNeedsDisplay()
    }

    @IBAction func leftPrime(_ sender: Any) {
        realCube.leftPrime()
        updateShadow()
    }
    
    @IBAction func resetCube(_ sender: Any) {
        realCube.resetCube()
        updateShadow()
    }
    
    @IBAction func turnUp(_ sender: Any) {
        realCube.turnUp()
        updateShadow()
    }
    
    @IBAction func leftTurn(_ sender: Any) {
        realCube.leftTurn()
        updateShadow()
    }
    
    @IBAction func turnCW(_ sender: Any) {
        realCube.turnCW()
        updateShadow()
    }
    
    @IBAction func turnDown(_ sender: Any) {
        realCube.turnDown()
        updateShadow()
    }
    
    @IBAction func rightPrime(_ sender: Any) {
        realCube.rightPrime()
        updateShadow()
    }
    
    @IBAction func rightTurn(_ sender: Any) {
        realCube.rightTurn()
        updateShadow()
    }
    
    @IBAction func facePrime(_ sender: Any) {
        realCube.facePrime()
        updateShadow()
    }
    
    @IBAction func shuffleCube(_ sender: Any) {
        realCube.shuffleCube()
        updateShadow()
    }
    
}

