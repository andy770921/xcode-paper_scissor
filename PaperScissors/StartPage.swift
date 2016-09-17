//
//  ViewController.swift
//  PaperScissors
//
//  Created by Andy Chou on 2016/9/17.
//  Copyright © 2016年 Andy Chou. All rights reserved.
//

import UIKit

class StartPage: UIViewController {
    
    @IBOutlet var paperB: UIButton!
    @IBOutlet var scissorB: UIButton!
    @IBOutlet var stoneB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let paperB = UIButton()
        //paperB.setTitle("paperButton", forState: .Normal)
        //self.view.addSubview(paperB)
        //paperB.addTarget(self, action: "WinLose", forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func rollValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 2
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    @IBAction func WinLose(){
    
        var controller: Outcome
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("secondPage") as! Outcome
        controller.WLValue = self.rollValue()
        self.presentViewController(controller, animated: true, completion: nil)
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

