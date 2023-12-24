//
//  ViewController.swift
//  tic tac toe game
//
//  Created by Gitixa Chauhan on 24/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lable: UILabel!
    var count = 1
    var activePlayer = 1 //cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var gameIsActive = true
    let winingCombinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    
    
    
    @IBAction func action(_ sender: UIButton) {
        
        if (gameState[sender.tag-1] == 0 && gameIsActive == true){
            gameState[sender.tag-1] = activePlayer
            if (activePlayer == 1) {
                sender.setImage(UIImage(named: "cross.png"), for: UIControl.State())
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "square.png"), for:UIControl.State())
                activePlayer = 1
            }
        }
        
        for combination in winingCombinations {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]{
                gameIsActive = false
                
                if gameState[combination[0]] == 1 {
                    lable.text = "CROSS HAS WON!"
                } else{
                    lable.text = "CIRCLE HAS WON!"
                }
                playAgainButton.isHidden = false
                lable.isHidden = false
            }
        }
                
                 gameIsActive = false
                    for i in gameState{
                        if i == 0
                        {
                            gameIsActive = true
                            break
                        }
                    }
                    if gameIsActive == false {
                        
                        lable.text = "IT WAS A DRAW!"
                        lable.isHidden = false
                        playAgainButton.isHidden = false
        }
    }
        @IBOutlet weak var playAgainButton: UIButton!
        @IBAction func playAgain(_ sender: UIButton) {
            
            gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
            gameIsActive = true
            activePlayer = 1
            playAgainButton.isHidden = true
            lable.isHidden = true
            
            for i in 1...9 {
                let button = view.viewWithTag(i) as! UIButton
                //button.setImage(UIImage(named: "leftArrow.png"), for: UIControl.State())
                //button.setImage(UIImage(named: "Blank.png"), for: UIControl.State())
                // button.setImage(nil, for: UIControl.State())
                
                                        
                                        }
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            playAgainButton.layer.cornerRadius = 40
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
}
