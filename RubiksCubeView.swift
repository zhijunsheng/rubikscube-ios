//
//  RubiksCubeView.swift
//  rubikscube
//
//  Created by jichengye on 2022/2/17.
//  Copyright © 2022 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksCubeView: UIView {
    
    var cellSide: CGFloat = 100
    var gridX: CGFloat = 200
    var gridY: CGFloat = 300

    override func draw(_ rect: CGRect) {
        let qwer = UIBezierPath()
        for i in 0 ..< 4 {
            qwer.move(to: CGPoint(x: gridX, y: gridY + cellSide * CGFloat(i)))
            qwer.addLine(to: CGPoint(x: gridX + 3 * cellSide, y: gridY + cellSide * CGFloat(i)))
        }
        for i in 0 ..< 4 {
            qwer.move(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY))
            qwer.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY + 3 * cellSide))
        }
        qwer.stroke()
    }
}
