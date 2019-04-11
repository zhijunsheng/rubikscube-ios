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
        
        let path = Bundle.main.path(forResource: "pick_release", ofType: "wav")
        let url = URL(fileURLWithPath: path!)
        audioPlayer = try? AVAudioPlayer(contentsOf: url)
    }
    
    var beganLocation: CGPoint = CGPoint(x: -1, y: -2)
    
    @IBAction func panCube(_ panGestureRecognizer: UIPanGestureRecognizer) {
        if panGestureRecognizer.state == .began {
            beganLocation = panGestureRecognizer.location(in: rubiksCubeView)
        } else if panGestureRecognizer.state == .ended {
            let endedLocation: CGPoint = panGestureRecognizer.location(in: rubiksCubeView)
            let began = indexOfCell(location: beganLocation)
            let ended = indexOfCell(location: endedLocation)
            
            if began == 0 && ended == 2 {
                rubiksCubeView.rubiksCube.rotateUPrime()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 2 && ended == 0 {
                rubiksCubeView.rubiksCube.rotateU()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 0 && ended == 6 {
                rubiksCubeView.rubiksCube.rotateL()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
                
            } else if began == 6 && ended == 0 {
                rubiksCubeView.rubiksCube.rotateLPrime()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 6 && ended == 8 {
                rubiksCubeView.rubiksCube.rotateD()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 8 && ended == 6 {
                rubiksCubeView.rubiksCube.rotateDPrime()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 8 && ended == 2 {
                rubiksCubeView.rubiksCube.rotateR()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 2 && ended == 8 {
                rubiksCubeView.rubiksCube.rotateRPrime()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 7 && ended == 1 {
                rubiksCubeView.rubiksCube.rotateCubeFU()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 3 && ended == 5 {
                rubiksCubeView.rubiksCube.rotateCubeFR()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 1 && ended == 7 {
                rubiksCubeView.rubiksCube.rotateCubeFU()
                rubiksCubeView.rubiksCube.rotateCubeFU()
                rubiksCubeView.rubiksCube.rotateCubeFU()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 5 && ended == 3 {
                rubiksCubeView.rubiksCube.rotateCubeFR()
                rubiksCubeView.rubiksCube.rotateCubeFR()
                rubiksCubeView.rubiksCube.rotateCubeFR()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 1 && ended == 5 || began == 5 && ended == 7 || began == 3 && ended == 1 || began == 7 && ended == 3 {
                rubiksCubeView.rubiksCube.rotateF()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            } else if began == 5 && ended == 1 || began == 7 && ended == 5 || began == 3 && ended == 7 || began == 1 && ended == 3 {
                rubiksCubeView.rubiksCube.rotateFPrime()
                audioPlayer.play()
                rubiksCubeView.setNeedsDisplay()
            }
        }
    }
    
    private func indexOfCell(location: CGPoint) -> Int {
        let col: Int = Int(floor((location.x - RubiksCubeView.originX) / RubiksCubeView.cellSide))
        let row: Int = Int(floor((location.y - RubiksCubeView.originY) / RubiksCubeView.cellSide))
        return row * 3 + col
    }
    
    @IBAction func touchShuffle(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.shuffle()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchResetGame(_ sender: UIButton) {
        rubiksCubeView.rubiksCube = RubiksCube()
        rubiksCubeView.setNeedsDisplay()
    }
    
    
}

