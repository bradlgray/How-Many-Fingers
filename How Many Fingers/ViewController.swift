//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Brad Gray on 7/13/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterAnswer: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func guess(sender: UIButton) {
     
        var numberOfFingers = arc4random_uniform(11)
        
        var enteredAnswer = enterAnswer.text.toInt()
        
        
        if enteredAnswer != nil {
            
        } else {
            answer.text = " answer between 1 and 10"
        }
        
        
    if enteredAnswer == Int(numberOfFingers) {
           answer.text = ("you got it right")
//        else if enteredAnswer > 10 {
//            answer.text = " answer between 1 and 10"
//
//        }
        
        } else {
            answer.text = "no answer is \(numberOfFingers)"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

