//
//  CubeView.swift
//  rubikscube
//
//  Created by Grace Huang on 1/23/20.
//  Copyright © 2020 Gold Thumb Inc. All rights reserved.
//

import UIKit

class CubeView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 100))
        path.addLine(to: CGPoint(x: 400, y: 100))
        path.stroke()
    }
}
