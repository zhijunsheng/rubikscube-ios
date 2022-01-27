//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RubiksCubeDelegate {
    
    
    var game = RubiksGame()

    @IBOutlet weak var rubiksView: RubiksView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rubiksView.delegate = self
        game.reset()
        
//        for j in 0 ..< 7 {
//            for i in 0 ..< 7 {
//
//                print("*", terminator: "")
//            }
//            print()
//        }
    }
    
    
    @IBAction func resetGame(_ sender: Any) {
        game.reset()
        rubiksView.setNeedsDisplay()
    }
    
    func moveCubeU() {
        game.moveCubeU()
        rubiksView.setNeedsDisplay()
    }
    
    func LLL() {
        game.LLL()
        rubiksView.setNeedsDisplay()
    }

    
    func L() {
        game.L()
        rubiksView.setNeedsDisplay()
    }
    
    func RRR() {
        game.RRR()
        rubiksView.setNeedsDisplay()
    }
    
    func R() {
        game.R()
        rubiksView.setNeedsDisplay()
    }
    
    func DDD() {
        game.DDD()
        rubiksView.setNeedsDisplay()
    }
    
    func D() {
        game.D()
        rubiksView.setNeedsDisplay()
    }
    
    func FFF() {
        game.FFF()
        rubiksView.setNeedsDisplay()
    }
    
    func U() {
        game.U()
        rubiksView.setNeedsDisplay()
    }
    
    func UUU() {
        game.UUU()
        rubiksView.setNeedsDisplay()
    }
    
    func F() {
        game.F()
        rubiksView.setNeedsDisplay()
    }

    func colorF(col: Int, row: Int) -> CubeColor {
        return game.colorF(col: col, row: row)
    }
    
    func colorU(col: Int, row: Int) -> CubeColor {
        return game.colorU(col: col, row: row)
    }
    func colorR(col: Int, row: Int) -> CubeColor {
        return game.colorR(col: col, row: row)
    }
}

