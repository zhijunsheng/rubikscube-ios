//
//  Utils.swift
//  rubikscube
//
//  Created by Halwong on 2019/6/21.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

struct Utils {
    static func xToCol(x: CGFloat, orgX: CGFloat, cellSide: CGFloat, margin: CGFloat) -> Int? {
        let col = Int((x - orgX) / cellSide)
        
        let first = orgX + cellSide * CGFloat(col)
        let second = orgX + cellSide * CGFloat(col + 1)
        
        if x > first + margin && x < second - margin {
            return col
        } else {
            return nil
        }
    }
    
    static func indexOfCell(location: CGPoint) -> Int? {
        guard let col = Utils.xToCol(x: location.x, orgX: RubiksCubeView.originX, cellSide: RubiksCubeView.cellSide, margin: 15), let row = Utils.xToCol(x: location.y, orgX: RubiksCubeView.originY, cellSide: RubiksCubeView.cellSide, margin: 15) else {
            return nil
        }
        return row * 3 + col
    }
}
