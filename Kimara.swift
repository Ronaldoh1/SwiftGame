//
//  Kimara.swift
//  RPGOOP
//
//  Created by Ronald Hernandez on 1/12/16.
//  Copyright © 2016 HardCoders. All rights reserved.
//

import Foundation

class Kimara: Enemy {

    let IMMUNE_MAX = 15

    override  var loot: [String] {
        
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    override var type: String {
        return "Kimara"
    }

    override func attempArrack(attackPwr: Int) -> Bool {
        if attackPwr > IMMUNE_MAX {
            return super.attempArrack(attackPwr)
            
        }else{
            return false
        }
    }
    
}