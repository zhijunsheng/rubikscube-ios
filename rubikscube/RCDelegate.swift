//
//  RCDelegate.swift
//  rubikscube
//
//  Created by Felix Lo on 2021-08-23.
//  Copyright © 2021 Gold Thumb Inc. All rights reserved.
//

import Foundation

protocol RCDelegate {
    func rotate(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int)
    func colourAt(index: Int, face: RCFace) -> RCColor
    
}
