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
        // Do any additional setup after loading the view, typically from a nib.
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

