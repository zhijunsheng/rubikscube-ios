//
//  ViewController.swift
//  RubiksCube
//
//  Created by Zhijun Sheng on 2020-06-06.
//  Copyright © 2020 Zhijun Sheng. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, RubiksCubeDelegate {

    var rubiksCube: RubiksCube = RubiksCube()
    
    @IBOutlet weak var canvasView: CanvasView!
    
    var audioPlayer: AVAudioPlayer
    
    required init?(coder: NSCoder) {
        let soundFilePath = Bundle.main.path(forResource: "drop", ofType: "wav")
        let url = URL(fileURLWithPath: soundFilePath!)
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer.prepareToPlay()
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvasView.rubiksCubeDelegate = self
        rubiksCube.reset()
        
        updateShadow()
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func reset(_ sender: Any) {
        rubiksCube.reset()
        updateShadow()
        canvasView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func shuffle(_ sender: Any) {
        rubiksCube.shuffle()
        updateShadow()
        canvasView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    func moveFinger(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        if fromCol == toCol && fromRow == toRow ||
            fromCol < 0 || fromCol > 2 ||
            fromRow < 0 || fromRow > 2 ||
            toCol < 0 || toCol > 2 ||
            toRow < 0 || toRow > 2 {
            return
        }
        
        rubiksCube.moveFinger(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow)
        updateShadow()
        
        audioPlayer.play()
    }

    func updateShadow() {
        canvasView.shadowTopFace = rubiksCube.topFace
        canvasView.shadowFrontFace = rubiksCube.frontFace
        canvasView.shadowRightFace = rubiksCube.rightFace
        canvasView.setNeedsDisplay()
    }
}

