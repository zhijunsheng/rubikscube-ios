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
        } else if fromCol == 0 && fromRow == 2 &&
                    toCol == 2 && toRow == 2 {
            rcGame.rotateFFCC()
        } else if fromCol == 1 && fromRow == 2 &&
                    toCol == 1 && toRow == 0 {
            rcGame.rotateUp()
        }
        rbView.setNeedsDisplay()
    }
    
    var facingFoward = true
    @IBAction func flipCube(_ sender: Any) {
        for i in 0 ..< 9 {
            if facingFoward {
                let a = rcGame.ff[i]
                let b = rcGame.rf[i]
                let c = rcGame.uf[i]
                rcGame.ff[i] = rcGame.bf[i]
                rcGame.uf[i] = rcGame.df[i]
                rcGame.rf[i] = rcGame.lf[i]
                rcGame.bf[i] = a
                rcGame.uf[i] = c
                rcGame.rf[i] = b
            } else {
                let a = rcGame.bf[i]
                let b = rcGame.lf[i]
                let c = rcGame.df[i]
                rcGame.bf[i] = rcGame.ff[i]
                rcGame.df[i] = rcGame.uf[i]
                rcGame.lf[i] = rcGame.rf[i]
                rcGame.ff[i] = a
                rcGame.uf[i] = c
                rcGame.rf[i] = b
            }
            rbView.setNeedsDisplay()
        }
        facingFoward.toggle()
        print(facingFoward)
    }
    
    @IBAction func shuffleCube(_ sender: Any) {
        rcGame.shuffleCube()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func resetCube(_ sender: Any) {
        rcGame.reset()
        rbView.setNeedsDisplay()
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

