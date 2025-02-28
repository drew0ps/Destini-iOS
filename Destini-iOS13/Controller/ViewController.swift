//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    var storybrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storybrain.nextStory(userChoice: sender.title(for: .normal)!)
        updateUi()
    }
    
    func updateUi () {
        storyLabel.text = storybrain.stories[storybrain.storyNumber].title
        storyLabel.sizeToFit()
        button1.setTitle(storybrain.stories[storybrain.storyNumber].choice1, for: .normal)
        button2.setTitle(storybrain.stories[storybrain.storyNumber].choice2, for: .normal)
    }
}
