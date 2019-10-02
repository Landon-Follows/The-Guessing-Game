//
//  ViewController.swift
//  The Guessing Game
//
//  Created by Landon Follows on 2019-10-02.
//  Copyright © 2019 Landon Follows. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties
    
    
    // MARK: Initializers
    
    
    // MARK: Methods (functions) - behaviours
    
    // Runs as soon as the view becomes avaliable to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make an object named 'synthesizer', which is an instance of the
        // class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()

        // Make a string that contains what we want to the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is."
        
        // Make an object named 'utterance', which is an instance of the class
        //AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
        
        
    }


}

