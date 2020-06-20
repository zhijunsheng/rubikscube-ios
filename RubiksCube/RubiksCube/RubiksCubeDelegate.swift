//
//  RubiksCubeDelegate.swift
//  RubiksCube
//
//  Created by Zhijun Sheng on 2020-06-08.
//  Copyright © 2020 Zhijun Sheng. All rights reserved.
//

import Foundation

protocol RubiksCubeDelegate {
    func moveFinger(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int)
}
