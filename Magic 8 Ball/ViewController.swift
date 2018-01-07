//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by wak on 08/01/2018.
//  Copyright © 2018 ashleytradeworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
    newBallImage()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    newBallImage()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func newBallImage (){
        
        randomBallNumber = Int(arc4random_uniform(4))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
       
        newBallImage()
    
    }
    
}

