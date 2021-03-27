//
//  RBView.swift
//  rubikscube
//
//  Created by Felix Lo on 2021-03-27.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RBView: UIView {
    override func draw(_ rect: CGRect) {
        drawCube()
    }
    
    func drawCube() {
        let path = UIBezierPath(rect: CGRect(x: 100, y: 100, width: 400, height: 400))
        path.stroke()
    }
}
