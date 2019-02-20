//
//  BoardView.swift
//  rubikscube
//
//  Created by Elaine on 2019-02-17.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    override func draw(_ rect: CGRect) {
        
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 30, y: 100))
        pencil.addLine(to: CGPoint(x: 80, y: 100))
        pencil.addLine(to: CGPoint(x: 80, y: 150))
        pencil.addLine(to: CGPoint(x: 30, y: 150))
        pencil.close()
     
        pencil.move(to: CGPoint(x: 80, y: 100))
        pencil.addLine(to: CGPoint(x: 130, y: 100))
        pencil.addLine(to: CGPoint(x: 130, y: 150))
        pencil.addLine(to: CGPoint(x: 80, y: 150))
        pencil.close()
        
        
        
        pencil.stroke()
    }
    

    

}
