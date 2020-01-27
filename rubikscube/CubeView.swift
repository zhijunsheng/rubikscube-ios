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
        let originX: CGFloat = 100
        let originY: CGFloat = 200
        let leftPointX: CGFloat = 225
        let rightPointX: CGFloat = 675
        let pointY: CGFloat = 80
        let squareSide: CGFloat = 450 / 3
        
        let path = UIBezierPath(rect: CGRect(x: originX, y: originY, width: squareSide * 3, height: squareSide * 3))
        path.move(to: CGPoint(x: originX, y: originY))
        path.addLine(to: CGPoint(x: leftPointX, y: pointY))
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY))
        path.addLine(to: CGPoint(x: leftPointX, y: pointY))
        path.move(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide * 3))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY + squareSide * 3))
        path.addLine(to: CGPoint(x: rightPointX, y: pointY))
        
        path.move(to: CGPoint(x: originX + squareSide, y: originY))
        path.addLine(to: CGPoint(x: originX + squareSide, y: originY + squareSide * 3))
        path.move(to: CGPoint(x: originX + squareSide * 2, y: originY))
        path.addLine(to: CGPoint(x: originX + squareSide * 2, y: originY + squareSide * 3))
        path.move(to: CGPoint(x: originX, y: originY + squareSide))
        path.addLine(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide))
        path.move(to: CGPoint(x: originX, y: originY + squareSide * 2))
        path.addLine(to: CGPoint(x: originX + squareSide * 3, y: originY + squareSide * 2))

        
        path.stroke()
    }
}
