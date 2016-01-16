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

    var enemy: Enemy!
    var player: Player!
    var chestMessage: String?

    override func viewDidLoad() {

        super.viewDidLoad()
        generateRandomEnemy()

        player = Player(name: "Ron", hp: 110, attPwr: 20)
        playerHP.text = "\(player.hp) HP"
    }


    func generateRandomEnemy(){

        let rand = Int(arc4random_uniform(2))

        if rand == 0 {
          enemy = Kimara(startingHP: 50, attackPwr:12)

        }else {
            enemy = DevilWizard(startingHP: 60, attackPwr: 15)
        }
        enemyImage.hidden = false
    }

    @IBAction func onChestTapped(sender: AnyObject) {


        chestButton.hidden = true
         printLbl.text = chestMessage

        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)

    }

    @IBAction func attack(sender: AnyObject) {

        if enemy.attempArrack(player.attackPw){
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPw)"
            monsterHP.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attack was unsuccessful"
        }

        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false

        }

        if !enemy.isAlive {
            monsterHP.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
        }

    }
}

