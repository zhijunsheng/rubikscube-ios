//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CubeDelegate {
    
    var gameManager = GameManager()
    @IBOutlet weak var cubeView: CubeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cubeView.delegate = self
        gameManager.reset()
    }
    
    func reset() {
        gameManager.reset()
    }
    
    func getPieceColorFrontFace(col: Int, row: Int) -> CubeColor {
        return gameManager.getPieceColorFrontFace(col: col, row: row)
    }
    func getPieceColorRightFace(col: Int, row: Int) -> CubeColor {
        return gameManager.getPieceColorRightFace(col: col, row: row)
    }
    func getPieceColorUpFace(col: Int, row: Int) -> CubeColor {
        return gameManager.getPieceColorUpFace(col: col, row: row)
    }
    func topRowTurn(clockwise: Bool) {
        gameManager.topRowTurn(clockwise: clockwise)
        cubeView.setNeedsDisplay()
    }
    func middleRowTurn(clockwise: Bool) {
        gameManager.middleRowTurn(clockwise: clockwise)
        cubeView.setNeedsDisplay()
    }
    func bottomRowTurn(clockwise: Bool) {
        gameManager.bottomRowTurn(clockwise: clockwise)
        cubeView.setNeedsDisplay()
    }
    func rightFaceLeftColumnTurn(clockwise: Bool) {
        gameManager.rightFaceLeftColumnTurn(clockwise: clockwise)
        cubeView.setNeedsDisplay()
    }
    func rightFaceMidColumnTurn(clockwise: Bool) {
        gameManager.rightFaceMidColumnTurn(clockwise: clockwise)
        cubeView.setNeedsDisplay()
    }
    func rightFaceRightColumnTurn(clockwise: Bool) {
        gameManager.rightFaceRightColumnTurn(clockwise: clockwise)
        cubeView.setNeedsDisplay()
    }
    func test(){
        gameManager.test()
    }
    


}

