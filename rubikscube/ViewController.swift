//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var realCube: RubikCubeModel = RubikCubeModel()

    @IBOutlet weak var cubeView: CubeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cubeView.shadowCube = realCube
    }
    func updateShadow() {
        cubeView.shadowCube = realCube
        cubeView.setNeedsDisplay()
    }

    @IBAction func leftPrime(_ sender: Any) {
        realCube.leftPrime()
        updateShadow()
    }
    
    @IBAction func turnCounter(_ sender: Any) {
        realCube.turnCounterCW()
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

