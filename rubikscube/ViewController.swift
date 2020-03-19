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
        case .faceCounter:
            realCube.facePrime()
        case .leftPrime:
            realCube.leftPrime()
        case .leftTurn:
            realCube.leftTurn()
        case .rightPrime:
            realCube.rightPrime()
        case .rightTurn:
            realCube.rightTurn()
        }
        updateShadow()
    }
    
    func inputSquares(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) -> RubikCubeGesture? {
        if  fromCol == 0 && fromRow == 0 && toCol == 2 && toRow == 0 ||
            fromCol == 0 && fromRow == 1 && toCol == 2 && toRow == 1 ||
            fromCol == 0 && fromRow == 2 && toCol == 2 && toRow == 2 {
            return .turnCounter
        }
        if  fromCol == 2 && fromRow == 1 && toCol == 1 && toRow == 0 ||
            fromCol == 1 && fromRow == 0 && toCol == 0 && toRow == 1 ||
            fromCol == 0 && fromRow == 1 && toCol == 1 && toRow == 2 ||
            fromCol == 1 && fromRow == 2 && toCol == 2 && toRow == 1 {
            return .faceCounter
        }
        if  fromCol == 0 && fromRow == 2 && toCol == 0 && toRow == 0 ||
            fromCol == 0 && fromRow == 1 && toCol == 0 && toRow == 0 {
            return .leftPrime
        }
        if  fromCol == 0 && fromRow == 0 && toCol == 0 && toRow == 2 ||
            fromCol == 0 && fromRow == 0 && toCol == 0 && toRow == 1 {
            return .leftTurn
        }
        if  fromCol == 2 && fromRow == 0 && toCol == 2 && toRow == 2 ||
            fromCol == 2 && fromRow == 0 && toCol == 2 && toRow == 1 {
            return .rightPrime
        }
        if  fromCol == 2 && fromRow == 2 && toCol == 2 && toRow == 0 ||
            fromCol == 2 && fromRow == 1 && toCol == 2 && toRow == 0{
            return.rightTurn
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
    
    
}

