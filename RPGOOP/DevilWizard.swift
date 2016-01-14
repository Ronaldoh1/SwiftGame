//
//  DevilWizard.swift
//  RPGOOP
//
//  Created by Ronald Hernandez on 1/12/16.
//  Copyright © 2016 HardCoders. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {

    override var loot:[String] {

        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }

    override var type: String {
        return "Devil Wizard"
    }
}