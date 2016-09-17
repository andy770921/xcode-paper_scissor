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
    @IBAction func WinLose(){
    
    
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

