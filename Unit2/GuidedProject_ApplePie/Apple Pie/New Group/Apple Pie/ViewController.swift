//
//  ViewController.swift
//  Apple Pie
//
//  Created by Miguel Gaido on 3/9/26.
//

import UIKit

class ViewController: UIViewController {
    
    var totalWins = 0
    var totalLosses = 0
    let incorrectMovesAllowed = 7
    var currentGame: Game!
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    

    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }

    func newRound() {
        let newWord = listOfWords.removeFirst()
          currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
}

