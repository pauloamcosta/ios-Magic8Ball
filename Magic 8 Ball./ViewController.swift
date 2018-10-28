//
//  ViewController.swift
//  Magic 8 Ball.
//
//  Created by Paulo Costa on 28/10/18.
//  Copyright © 2018 Paulo Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
        // Do any additional setup after loading the view, typically from a nib.
    }
func newBallImage() {
    randomBallNumber = Int.random(in: 0 ... 4)
    imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
}

