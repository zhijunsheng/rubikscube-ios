//
//  BoardView.swift
//  rubikscube
//
//  Created by Elaine on 2019-02-17.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView { // 37 instead of 50
    override func draw(_ rect: CGRect) {
        
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 30, y: 100))
        pencil.addLine(to: CGPoint(x: 30 + 1 * 50, y: 100))
        pencil.addLine(to: CGPoint(x: 30 + 1 * 50, y: 100 + 50))
        pencil.addLine(to: CGPoint(x: 30, y: 100 + 50))
        pencil.close()

        pencil.move(to: CGPoint(x: 30 + 1 * 50, y: 100))
        pencil.addLine(to: CGPoint(x: 30 + 2 * 50, y: 100))
        pencil.addLine(to: CGPoint(x: 30 + 2 * 50, y: 100 + 50))
        pencil.addLine(to: CGPoint(x: 30 + 1 * 50, y: 100 + 50))
        pencil.close()

        pencil.move(to: CGPoint(x: 30 + 2 * 50, y: 100))
        pencil.addLine(to: CGPoint(x: 30 + 3 * 50, y: 100))
        pencil.addLine(to: CGPoint(x: 30 + 3 * 50, y: 100 + 50))
        pencil.addLine(to: CGPoint(x: 30 + 2 * 50, y: 100 + 50))
        pencil.close()
        
//        pencil.move(to: CGPoint(x: 30, y: 100))
//        pencil.addLine(to: CGPoint(x: 30 + 1 * 50, y: 150))
//        pencil.addLine(to: CGPoint(x: 30 + 1 * 50, y: 100 + 2 * 50))
//        pencil.addLine(to: CGPoint(x: 30, y: 100 + 50))
//        pencil.close()
        
        
        
        pencil.stroke()
    }
    

    

}
