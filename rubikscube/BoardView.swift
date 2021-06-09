//
//  BoardView.swift
//  rubikscube
//
//  Created by Angie Yan on 2021-06-09.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {


    override func draw(_ rect: CGRect) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: 100, y: 100))
        line.addLine(to: CGPoint(x: 100, y: 300))
        line.stroke()
        
    }
    

}
