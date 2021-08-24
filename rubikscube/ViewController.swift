//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RCDelegate {
    
    
    @IBOutlet weak var rbView: RBView!
    
    var rcGame = RCGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rbView.delegate = self
    }
    
    func rotate(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        if fromCol == 0 && fromRow == 0 &&
            toCol == 2 && toRow == 0 {
            rcGame.rotateFFC()
            rbView.setNeedsDisplay()
        }
    }
    
    func abcd(index: Int, face: RCFace) -> RCColor {
        return rcGame.abcd(index: index, face: face)
    }

    @IBAction func rotateFFC(_ sender: Any) {
        rcGame.rotateFFC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateFFCC(_ sender: Any) {
        rcGame.rotateFFCC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateRFC(_ sender: Any) {
        rcGame.rotateRFC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateRFCC(_ sender: Any) {
        rcGame.rotateRFCC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateUFC(_ sender: Any) {
        rcGame.rotateUFC()
        rbView.setNeedsDisplay()
    }
}

