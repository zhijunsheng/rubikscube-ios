//
//  GameView.swift
//  rubikscube
//
//  Created by Andy Yan on 2021-06-09.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit

class GameView: UIView {

    
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 100, y: 100))
        pencil.addLine(to: CGPoint(x: 200, y: 100))
        
        pencil.stroke()
    }
}
