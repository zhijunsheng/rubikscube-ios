//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var rubiksCubeView: RubiksCubeView!
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "page_flip", ofType: "mp3")
        let url = URL(fileURLWithPath: path!)
        audioPlayer = try? AVAudioPlayer(contentsOf: url)
    }

    @IBAction func touchU(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateU()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchUPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateUPrime()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchR(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateR()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchRPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateRPrime()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchD(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateD()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchDPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateDPrime()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchL(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateL()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchLPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateLPrime()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchF(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateF()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchFPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateFPrime()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchB(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateB()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchBPrime(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateBPrime()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchFR(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateCubeFR()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchFU(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.rotateCubeFU()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchShuffle(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.shuffle()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
}

