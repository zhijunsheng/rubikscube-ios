//
//  RubiksCubeView.swift
//  rubikscube
//
//  Created by jichengye on 2022/2/17.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksCubeView: UIView {
    
    override func draw(_ rect: CGRect) {
        let qwer = UIBezierPath()
        qwer.move(to: CGPoint(x: 100, y: 100))
        qwer.addLine(to: CGPoint(x: 500, y: 300))
        qwer.stroke()
    }
    
}
