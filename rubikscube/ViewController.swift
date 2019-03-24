//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rubiksCubeView: RubiksCubeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func touchU(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateU()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchUPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateUPrime()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchR(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateR()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchRPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateRPrime()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchD(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateD()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchDPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateDPrime()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchL(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateL()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchLPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateLPrime()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchF(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateF()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchFPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateFPrime()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchFR(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateCubeFR()
        rubiksCubeView.setNeedsDisplay()
    }
    
    @IBAction func touchFU(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateCubeFU()
        rubiksCubeView.setNeedsDisplay()
    }
    
}

