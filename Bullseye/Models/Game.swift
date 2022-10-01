//
//  Game.swift
//  Bullseye
//
//  Created by mihaly bence on 01.10.2022.
//

import Foundation

struct  Game {
    var Target : Int = Int.random(in: 1...100)
    var Score : Int = 0
    var Round : Int = 1
    
    func CalculatePoints(value : Int) -> Int {
        return 100 - abs(Target - value)
    }
}
