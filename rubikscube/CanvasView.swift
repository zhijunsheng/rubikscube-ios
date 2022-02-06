//
//  CanvasView.swift
//  rubikscube
//
//  Created by Lambert Lin on 2022/2/6.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    let cellSide: CGFloat = 123.145
    
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        for i in 0..<4 {
            pencil.move(to: CGPoint(x: 100 + CGFloat(i) * cellSide, y: 100))
            pencil.addLine(to: CGPoint(x: 100 + CGFloat(i) * cellSide, y: 100 + 3 * cellSide))
            pencil.move(to: CGPoint(x: 100, y: 100 + CGFloat(i) * cellSide))
            pencil.addLine(to: CGPoint(x: 100 + 3 * cellSide, y: 100 + CGFloat(i) * cellSide))
        }

        pencil.stroke()
        
    }
}
