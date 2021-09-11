//
//  ViewController.swift
//  rollADice
//
//  Created by Yun Xu on 2021/9/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    var score=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func above7Pressed(_ sender: Any) {
        let one=Int.random(in: 1...6)
        let two=Int.random(in: 1...6)
        let dice1Image="Dice\(one)"
        let dice2Image="Dice\(two)"
        dice1.image=UIImage(named:dice1Image)
        dice2.image=UIImage(named:dice2Image)
        if one+two<7{
            score+=1
        }else{
            score-=1
        }
        scoreLabel.text="Score = \(score)"

    }
    
    @IBAction func lucku7pressed(_ sender: Any) {
        let one=Int.random(in: 1...6)
        let two=Int.random(in: 1...6)
        let dice1Image="Dice\(one)"
        let dice2Image="Dice\(two)"
        dice1.image=UIImage(named:dice1Image)
        dice2.image=UIImage(named:dice2Image)
        if one+two==7{
            score+=7
        }else{
            score-=1
        }
        scoreLabel.text="score=\(score)"

        
    }
    
    @IBAction func below7Pressed(_ sender: Any) {
        let one=Int.random(in: 1...6)
        let two=Int.random(in: 1...6)
        let dice1Image="Dice\(one)"
        let dice2Image="Dice\(two)"
        dice1.image=UIImage(named:dice1Image)
        dice2.image=UIImage(named:dice2Image)
        if one+two>7{
            score+=1
        }else{
            score-=1
        }
        scoreLabel.text="score=\(score)"

    }
    
}

