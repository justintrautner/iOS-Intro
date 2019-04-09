//
//  ViewController.swift
//  TicTacToe
//
//  Created by Justin Trautner on 4/8/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var activeplayer: Int = Int.random(in: 1...2)
    var gameState:[Int] = [0,0,0,0,0,0,0,0,0]
    var gameIsActive: Bool = true
    let winningCombo = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBAction func resetButton(_ sender: UIButton){
        gameState=[0,0,0,0,0,0,0,0,0]
        gameIsActive=true
        super.loadView()
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        if(gameState[sender.tag]==0 && gameIsActive){
            gameState[sender.tag]=activeplayer
            if activeplayer==1 {
                sender.backgroundColor=UIColor.blue
                activeplayer=2
            }else{
                sender.backgroundColor=UIColor.red
                activeplayer=1
            }
            checkWinner()
        }
    }
    func checkWinner(){
        for combination in winningCombo{
            if gameState[combination[0]] == 1 && gameState[combination[1]] == 1 && gameState[combination[2]] == 1{
                winnerLabel.isHidden=false
                winnerLabel.text="Blue wins"
                gameIsActive=false
            }
            else if gameState[combination[0]] == 2 && gameState[combination[1]] == 2 && gameState[combination[2]] == 2{
                winnerLabel.isHidden=false
                winnerLabel.text="Red wins"
                gameIsActive=false
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

