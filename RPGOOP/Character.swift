//
//  Character.swift
//  RPGOOP
//
//  Created by Ronald Hernandez on 1/12/16.
//  Copyright © 2016 HardCoders. All rights reserved.
//

import Foundation

class Character{
    private var _hp: Int = 100
    private var _attackPw: Int = 10

    var attackPw: Int {

        get{
            return _attackPw
        }
    }


    var hp: Int {
        get {
            return _hp
        }
    }
    //Computed Property

    var isAlive: Bool {

        get {
            if hp <= 0 {
                return false
            }else{
                return true
            }
        }
    }

    init(startingHP: Int, attackPwr: Int){
        self._hp = startingHP
        self._attackPw = attackPwr

    }

    func attempArrack(attackPwr: Int) -> Bool {
        self._hp -= attackPw

        return true
    }

}