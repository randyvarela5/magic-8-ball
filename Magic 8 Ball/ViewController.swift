//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Randy Varela on 12/19/18.
//  Copyright © 2018 Randy Varela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["8ball1", "8ball2", "8ball3", "8ball4", "8ball5", "8ball6"]
    
    var randomBallIndex: Int = 0
    
    @IBOutlet weak var ballImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func resetBallImageButton(_ sender: UIButton) {
        ballImageView.image = UIImage(named: "8BallFace")
        
    }
    
    @IBAction func ballShakeAction(_ sender: UIButton) {
        shakeBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        
        shakeBall()
        
    
    }
    func shakeBall(){
        randomBallIndex = Int.random(in: 0...5)
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
    }

}

