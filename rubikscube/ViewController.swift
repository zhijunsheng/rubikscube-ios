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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rbView.cube.ff = [.red, .blue, .yellow, .orange, .green, .white, .red, .white, .yellow]
        // Do any additional setup after loading the view, typically from a nib.
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

