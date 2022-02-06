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
        if fromCol == 1 && fromRow == 0 &&
            toCol == 2 && toRow == 1 {
            rcGame.rotateFC()
        } else if fromCol == 2 && fromRow == 1 &&
                    toCol == 1 && toRow == 0 {
            rcGame.rotateFCC()
        } else if fromCol == 1 && fromRow == 2 &&
                    toCol == 1 && toRow == 0 {
            rcGame.rotateUp()
        } else if fromCol == 1 && fromRow == 0 &&
                    toCol == 1 && toRow == 2 {
            rcGame.rotateDown()
        } else if fromCol == 0 && fromRow == 1 &&
                    toCol == 2 && toRow == 1 {
            rcGame.rotateRight()
        } else if fromCol == 2 && fromRow == 1 &&
                    toCol == 0 && toRow == 1 {
            rcGame.rotateLeft()
        } else if fromCol == 0 && fromRow == 2 &&
                    toCol == 2 && toRow == 2 {
            rcGame.rotateDFC()
        } else if fromCol == 2 && fromRow == 2 &&
                    toCol == 0 && toRow == 2 {
            rcGame.rotateDFCC()
        } else if fromCol == 0 && fromRow == 0 &&
                    toCol == 2 && toRow == 0 {
            rcGame.rotateUCC()
        } else if fromCol == 2 && fromRow == 0 &&
                    toCol == 0 && toRow == 0 {
            rcGame.rotateUC()
        } else if fromCol == 0 && fromRow == 0 &&
                    toCol == 0 && toRow == 2 {
            rcGame.rotateLFC()
        } else if fromCol == 0 && fromRow == 2 &&
        toCol == 0 && toRow == 0 {
            rcGame.rotateLFCC()
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
    
    func colourAt(index: Int, face: RCFace) -> RCColor {
        return rcGame.colourAt(index: index, face: face)
    }

    @IBAction func rotateFFC(_ sender: Any) {
        rcGame.rotateFC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateFFCC(_ sender: Any) {
        rcGame.rotateFCC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateRFC(_ sender: Any) {
        rcGame.rotateRC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateRFCC(_ sender: Any) {
        rcGame.rotateRCC()
        rbView.setNeedsDisplay()
    }
    
    @IBAction func rotateUFC(_ sender: Any) {
        rcGame.rotateUC()
        rbView.setNeedsDisplay()
    }
}

