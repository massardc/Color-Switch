//
//  Settings.swift
//  Color Switch
//
//  Created by ClementM on 05/03/2018.
//  Copyright © 2018 ClementM. All rights reserved.
//

import SpriteKit

enum PhysicsCategories {
    static let none: UInt32 = 0
    static let ballCategory: UInt32 = 0x1           // 01
    static let switchCategory: UInt32 = 0x1 << 1    // 10
}
