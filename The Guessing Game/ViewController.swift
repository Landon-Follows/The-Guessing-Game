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
    let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var submittedGuess: UITextField!
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
        
        // Report the target number to the console for testing purposes
        print("For Testing purposes, the random number is \(targetNumber)")
    }


    
    // Will be used to check  guess
    @IBAction func checkGuess(_ sender: Any) {
        
        // Obtain the guess vlaue from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        // For testing purposes, what was the guess?
        print("For test purposes, the guess made was \(guessNumber)")
        
        // Give the appropriate feedback to the user
        if guessNumber > targetNumber {
            print("Guess lower")
        } else if guessNumber < targetNumber {
          print("Guess Higher")
        } else {
            print("You are Amazingly Correct!")
        }
        
    }
    
    
}

