//
//  ViewController.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-01-30.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController, RubiksCubeDelegate {
    
    @IBOutlet weak var rubiksCubeView: RubiksCubeView!
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "pick_release", ofType: "wav")
        let url = URL(fileURLWithPath: path!)
        audioPlayer = try? AVAudioPlayer(contentsOf: url)
        rubiksCubeView.rubiksCubeDelegate = self
    }
    var cubeRotation: CubeRotation = .nothing
    
    var beganLocation: CGPoint = CGPoint(x: -1, y: -2)
    
    func add(began: Int, ended: Int) {
        let number: Int
        number = began + ended
        print(number)
    }
    
    func rotateCube(began: Int, ended: Int) {
        if began == 0 && ended == 2 || began == 0 && ended == 1 || began == 1 && ended == 2 {
            rubiksCubeView.rubiksCube.rotateUPrime()
            cubeRotation = .rotateUPrime
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 2 && ended == 0 || began == 2 && ended == 1 || began == 1 && ended == 0 {
            rubiksCubeView.rubiksCube.rotateU()
            cubeRotation = .rotateU
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 0 && ended == 6 || began == 0 && ended == 3 || began == 3 && ended == 6 {
            rubiksCubeView.rubiksCube.rotateL()
            cubeRotation = .rotateL
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
            
        } else if began == 6 && ended == 0 || began == 6 && ended == 3 || began == 3 && ended == 0 {
            rubiksCubeView.rubiksCube.rotateLPrime()
            cubeRotation = .rotateLPrime
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 6 && ended == 8 || began == 6 && ended == 7 || began == 7 && ended == 8 {
            rubiksCubeView.rubiksCube.rotateD()
            cubeRotation = .rotateD
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 8 && ended == 6 || began == 8 && ended == 7 || began == 7 && ended == 6 {
            rubiksCubeView.rubiksCube.rotateDPrime()
            cubeRotation = .rotateDPrime
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 8 && ended == 2 || began == 8 && ended == 5 || began == 5 && ended == 2 {
            rubiksCubeView.rubiksCube.rotateR()
            cubeRotation = .rotateR
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 2 && ended == 8 || began == 5 && ended == 8 || began == 2 && ended == 5 {
            rubiksCubeView.rubiksCube.rotateRPrime()
            cubeRotation = .rotateRPrime
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 7 && ended == 1 || began == 7 && ended == 4 || began == 4 && ended == 1 {
            rubiksCubeView.rubiksCube.rotateCubeFU()
            cubeRotation = .rotateCubeFU
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 3 && ended == 5 || began == 3 && ended == 4 || began == 4 && ended == 5 {
            rubiksCubeView.rubiksCube.rotateCubeFR()
            cubeRotation = .rotateCubeFR
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 1 && ended == 7 || began == 1 && ended == 4 || began == 4 && ended == 7 {
            rubiksCubeView.rubiksCube.rotateCubeUF()
            cubeRotation = .rotateCubeUF
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 5 && ended == 3 || began == 5 && ended == 4 || began == 4 && ended == 3 {
            rubiksCubeView.rubiksCube.rotateCubeRF()
            cubeRotation = .rotateCubeRF
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 1 && ended == 5 || began == 5 && ended == 7 || began == 3 && ended == 1 || began == 7 && ended == 3 {
            rubiksCubeView.rubiksCube.rotateF()
            cubeRotation = .rotateF
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        } else if began == 5 && ended == 1 || began == 7 && ended == 5 || began == 3 && ended == 7 || began == 1 && ended == 3 {
            rubiksCubeView.rubiksCube.rotateFPrime()
            cubeRotation = .rotateFPrime
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        }
    }
    
    @IBAction func touchBack(_ sender: UIButton) {
        switch cubeRotation {
        case .rotateR:
            rubiksCubeView.rubiksCube.rotateRPrime()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateRPrime:
            rubiksCubeView.rubiksCube.rotateR()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateF:
            rubiksCubeView.rubiksCube.rotateFPrime()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateFPrime:
            rubiksCubeView.rubiksCube.rotateF()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateL:
            rubiksCubeView.rubiksCube.rotateLPrime()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateLPrime:
            rubiksCubeView.rubiksCube.rotateL()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateD:
            rubiksCubeView.rubiksCube.rotateDPrime()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateDPrime:
            rubiksCubeView.rubiksCube.rotateD()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateU:
            rubiksCubeView.rubiksCube.rotateUPrime()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateUPrime:
            rubiksCubeView.rubiksCube.rotateU()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateCubeFR:
            rubiksCubeView.rubiksCube.rotateCubeRF()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateCubeRF:
            rubiksCubeView.rubiksCube.rotateCubeFR()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateCubeFU:
            rubiksCubeView.rubiksCube.rotateCubeUF()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .rotateCubeUF:
            rubiksCubeView.rubiksCube.rotateCubeFU()
            audioPlayer.play()
            rubiksCubeView.setNeedsDisplay()
        case .nothing:
            break
        }
        cubeRotation = .nothing
    }
    
    @IBAction func touchHandleScondLayer(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.handleSecondLayer()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchTopFaceCross(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.handleTopFaceCross()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchShuffle(_ sender: UIButton) {
        rubiksCubeView.rubiksCube.shuffle()
        rubiksCubeView.setNeedsDisplay()
        audioPlayer.play()
    }
    
    @IBAction func touchResetGame(_ sender: UIButton) {
        rubiksCubeView.rubiksCube = RubiksCube()
        cubeRotation = .nothing
        rubiksCubeView.setNeedsDisplay()
    }
    
    
}

