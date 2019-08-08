//
//  CubeDelegate.swift
//  rubikscube
//
//  Created by Peter Shi on 2019-08-08.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

protocol CubeDelegate {
    func turnCube(startX: Int, startY: Int, endX: Int, endY: Int) 
}
