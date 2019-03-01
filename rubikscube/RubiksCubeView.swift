//
//  RubiksCubeView.swift
//  rubikscube
//
//  Created by Halwong on 2019/3/1.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class RubiksCubeView: UIView {
    let originX: CGFloat = 90
    let originY: CGFloat = 39
    let cellSide: CGFloat = 90

    override func draw(_ rect: CGRect) {
       
        drawSquare()
    }

    func drawSquare() {
        let pen = UIBezierPath()
        
        pen.move(to: CGPoint(x: originX, y: originY))
        pen.addLine(to: CGPoint(x: originX + cellSide, y: originY))
        pen.addLine(to: CGPoint(x: originX + cellSide, y: originY + cellSide))
        pen.addLine(to: CGPoint(x: originX, y: originY + cellSide))
        pen.close()
        pen.stroke()
    }

}
