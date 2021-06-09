//
//  GameView.swift
//  rubikscube
//
//  Created by Andy Yan on 2021-06-09.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit

class GameView: UIView {
    let anchorX: CGFloat = 125
    let anchorY: CGFloat = 250
    
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: anchorX, y: anchorY))
        pencil.addLine(to: CGPoint(x: anchorX + 300, y: anchorY))
        pencil.addLine(to: CGPoint(x: anchorX + 300, y: anchorY + 300))
        pencil.addLine(to: CGPoint(x: anchorX, y: anchorY + 300))
        pencil.close()
        pencil.addLine(to: CGPoint(x: anchorX + 225, y: anchorY - 100))
        pencil.addLine(to: CGPoint(x: anchorX + 500, y: anchorY - 100))
        pencil.addLine(to: CGPoint(x: anchorX + 300, y: anchorY))
        pencil.addLine(to: CGPoint(x: anchorX + 300, y: anchorY + 300))
        pencil.addLine(to: CGPoint(x: anchorX + 500, y: anchorY + 175))
        pencil.addLine(to: CGPoint(x: anchorX + 500, y: anchorY - 100))
        
        pencil.stroke()
    }
}
