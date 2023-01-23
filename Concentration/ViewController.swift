//
//  ViewController.swift
//  Concentration
//
//  Created by Игорь Солодянкин on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ButtonCollection: [UIButton]!
    
    @IBOutlet weak var touchLabel: UILabel!
    
    @IBAction func ButtonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = ButtonCollection.firstIndex(of: sender) {
            flipButton(emoji: emojis[buttonIndex], button: sender)
        }
    }
    
    let emojis = ["🦊", "🐰", "🦊", "🐰"]

    var touches = 0 {
        didSet{
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    private func flipButton(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

    
}

