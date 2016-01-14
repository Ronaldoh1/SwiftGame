//
//  Enemy.swift
//  RPGOOP
//
//  Created by Ronald Hernandez on 1/12/16.
//  Copyright © 2016 HardCoders. All rights reserved.
//

import Foundation

class Enemy: Character {
    var loot: [String] {
        return ["Rusty Dagger", "Cracker Buckler"]
    }

    var type: String {
        return "Grunt"
    }

    //cast the into to unsigned to Int32

    //returns a random loot. 

    func dropLoot() -> String?{
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))

            return loot[rand]
        }
        return nil

    }
}