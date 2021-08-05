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
    }

    @IBAction func rotateFFC(_ sender: Any) {
        rbView.cube.rotateFFC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateFFCC(_ sender: Any) {
        rbView.cube.rotateFFCC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateRFC(_ sender: Any) {
        rbView.cube.rotateRFC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateRFCC(_ sender: Any) {
        rbView.cube.rotateRFCC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateUFC(_ sender: Any) {
        rbView.cube.rotateUFC()
        rbView.setNeedsDisplay()
    }
}

