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
    
}

