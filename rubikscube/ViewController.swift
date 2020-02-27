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


    @IBAction func leftPrime(_ sender: Any) {
        realCube.leftPrime()
        cubeView.shadowCube = realCube
        cubeView.setNeedsDisplay()
        // update the view
    }
    
    @IBAction func turnCounter(_ sender: Any) {
        realCube.turnCounterCW()
        cubeView.shadowCube = realCube
        cubeView.setNeedsDisplay()
    }
}

