//
//  ViewController.swift
//  RPGOOP
//
//  Created by Ronald Hernandez on 1/12/16.
//  Copyright © 2016 HardCoders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!

    @IBOutlet weak var chestButton: UIButton!
    @IBOutlet weak var monsterHP: UILabel!
    @IBOutlet weak var playerHP: UILabel!
    override func viewDidLoad() {
      var enemy: Kimara!
        var player: Player!

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        generateRandomEnemy()

        player = Player(name: "Ron", hp: 110, attPwr: 20)
        playerHP.text = "\(player.hp) HP"
    }


    func generateRandomEnemy(){

        let rand = Int(arc4random_uniform(2))

        if rand == 0 {
          enemy = Kimara(startingHP: 50, attackPwr:12)
        }else {

        }
    }

    @IBAction func onChestTapped(sender: AnyObject) {



    }

}

