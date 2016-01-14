//
//  Player.swift
//  RPGOOP
//
//  Created by Ronald Hernandez on 1/12/16.
//  Copyright © 2016 HardCoders. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"


    var name:String {
        get {
            return _name
        }
    }


    private var _inventory = [String]()

    var inventory:[String] {
        return _inventory
    }

    convenience init(name: String, hp: Int, attPwr: Int){
        self.init(startingHP: hp, attackPwr: attPwr)
        _name = name

    }
}