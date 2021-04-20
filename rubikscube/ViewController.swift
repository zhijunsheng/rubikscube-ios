//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rbView: RBView!
    
    var rcGame = RCGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        rcGame.rf = [.white, .green, .green, .green, .green, .green, .green, .green, .green]
//        rcGame.uf = [.green, .green, .green, .green, .green, .green, .red, .green, .green]
//        rcGame.df = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
//        rcGame.ff = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
//        rcGame.lf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
//        rcGame.bf = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
//        
//        rbView.cube = rcGame
//        
//        rbView.setNeedsDisplay()
    }

    @IBAction func rotateFFC(_ sender: Any) {
        rbView.cube.rotateFFC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateFFCC(_ sender: Any) {
        rbView.cube.rotateFFCC()
        rbView.setNeedsDisplay()
    }
}

