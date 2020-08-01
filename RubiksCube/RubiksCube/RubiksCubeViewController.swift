//
//  ViewController.swift
//  RubiksCube
//
//  Created by Zhijun Sheng on 2020-06-06.
//  Copyright © 2020 Zhijun Sheng. All rights reserved.
//

import UIKit
import AVFoundation

class RubiksCubeViewController: UIViewController, RubiksCubeDelegate {

    var rubiksCube: RubiksCube = RubiksCube()
    
    @IBOutlet weak var canvasView: CanvasView!
    
    var audioPlayer: AVAudioPlayer?
    
    required init?(coder: NSCoder) {
        #if !targetEnvironment(simulator)
        let soundFilePath = Bundle.main.path(forResource: "drop", ofType: "wav")
        let url = URL(fileURLWithPath: soundFilePath!)
        audioPlayer = try? AVAudioPlayer(contentsOf: url)
        audioPlayer?.prepareToPlay()
        #endif
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvasView.rubiksCubeDelegate = self
        rubiksCube.reset()
        
        updateShadow()
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func reset(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Restart?", message: nil, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Yes", style: .destructive) {_ in self.resetLocally() })
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        avoidAlertCrashOnPad(alertController: alertController)
        present(alertController, animated: true)
    }
    
    @IBAction func shuffle(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Shuffle?", message: nil, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Yes", style: .destructive) {_ in self.shuffleLocally() })
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        avoidAlertCrashOnPad(alertController: alertController)
        present(alertController, animated: true)
    }
    
    @IBAction func algorithm(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        let handleSecondLayerAlg = UIAlertAction(title: "R' D R D F D' F' (2nd layer)", style: .default) { _ in
            self.alertActionOf { self.rubiksCube.handleSecondLayer() }
        }
        alertController.addAction(handleSecondLayerAlg)
        
        let handleTopFaceCrossAlg = UIAlertAction(title: "F U R U' R' F' (top face cross)", style: .default) { _ in
            self.alertActionOf { self.rubiksCube.handleTopFaceCross() }
        }
        alertController.addAction(handleTopFaceCrossAlg)
        
        let handleTopLayerCrossAlg = UIAlertAction(title: "R U R' U R U U R' (top layer cross)", style: .default) { _ in
            self.alertActionOf { self.rubiksCube.handleTopLayerCross() }
        }
        alertController.addAction(handleTopLayerCrossAlg)
        
        let rotateThreeTopCornersAlg = UIAlertAction(title: "L' U R U' L U R' (rotate 3 top corners)", style: .default) { _ in
            self.alertActionOf { self.rubiksCube.rotateThreeTopCorners() }
        }
        alertController.addAction(rotateThreeTopCornersAlg)
        
        let switchTopCornerColorsAlg = UIAlertAction(title: "R' D' R D (top corner colors)", style: .default) { _ in
            self.alertActionOf { self.rubiksCube.switchTopCornerColors() }
        }
        alertController.addAction(switchTopCornerColorsAlg)
        
        avoidAlertCrashOnPad(alertController: alertController)
        present(alertController, animated: true, completion: nil)
    }
    
    private func alertActionOf(algorithm: () -> ()) {
        algorithm()
        updateShadow()
        canvasView.setNeedsDisplay()
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
    }
    
    @IBAction func info(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func handleSecondLayer(_ sender: Any) {
        rubiksCube.handleSecondLayer()
        updateShadow()
        canvasView.setNeedsDisplay()
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
    }
    
    @IBAction func handleTopFaceCross(_ sender: Any) {
        rubiksCube.handleTopFaceCross()
        updateShadow()
        canvasView.setNeedsDisplay()
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
    }
    
    @IBAction func handleTopLayerCross(_ sender: Any) {
        rubiksCube.handleTopLayerCross()
        updateShadow()
        canvasView.setNeedsDisplay()
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
    }
    
    @IBAction func rotateThreeTopCorners(_ sender: Any) {
        rubiksCube.rotateThreeTopCorners()
        updateShadow()
        canvasView.setNeedsDisplay()
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
    }
    
    @IBAction func switchTopCornerColors(_ sender: Any) {
        rubiksCube.switchTopCornerColors()
        updateShadow()
        canvasView.setNeedsDisplay()
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
    }
    
    private func shuffleLocally() {
        rubiksCube.shuffle()
        updateShadow()
        canvasView.setNeedsDisplay()
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
    }
    
    private func resetLocally() {
        rubiksCube.reset()
        updateShadow()
        canvasView.setNeedsDisplay()
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
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
        
        #if !targetEnvironment(simulator)
        audioPlayer?.play()
        #endif
    }

    private func updateShadow() {
        canvasView.shadowTopFace = rubiksCube.topFace
        canvasView.shadowFrontFace = rubiksCube.frontFace
        canvasView.shadowRightFace = rubiksCube.rightFace
        canvasView.setNeedsDisplay()
    }
    
    private func avoidAlertCrashOnPad(alertController: UIAlertController) {
        if let popoverPresentationController = alertController.popoverPresentationController {
            popoverPresentationController.permittedArrowDirections = .init(rawValue: 0)
            popoverPresentationController.sourceView = self.view
            popoverPresentationController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
        }
    }
}

