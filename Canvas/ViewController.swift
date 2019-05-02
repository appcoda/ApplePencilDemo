//
//  ViewController.swift
//  Canvas
//
//  Created by Sai Kambampati on 1/4/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPencilInteractionDelegate {

    @IBOutlet var ideaLabel: UILabel!
    @IBOutlet var ideaButton: UIButton!
    
    let ideas = ["Email app that anonymously pings all your coworkers after New Year’s", "Self-imposed ads reminding you of your to-do list", "Anti-bacterial gel dispensing doorknobs.", "Vending machines that can break a $20", "Routers that work."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ideaLabel.text = (ideas.randomElement()!)
        
        let interaction = UIPencilInteraction()
        interaction.delegate = self
        view.addInteraction(interaction)
    }

    func pencilInteractionDidTap(_ interaction: UIPencilInteraction) {
        switch UIPencilInteraction.preferredTapAction {
        case .ignore:
            ideaButton.alpha = 1
        case .showColorPalette:
            ideaLabel.text = (ideas.randomElement()!)
        case .switchEraser:
            ideaLabel.text = (ideas.randomElement()!)
        case .switchPrevious:
            ideaLabel.text = (ideas.randomElement()!)
        default:
            break
        }
    }
    
    @IBAction func nextIdea(_ sender: Any) {
        ideaLabel.text = (ideas.randomElement()!)
    }
}

