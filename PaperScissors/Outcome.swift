//
//  Outcome.swift
//  PaperScissors
//
//  Created by Andy Chou on 2016/9/17.
//  Copyright © 2016年 Andy Chou. All rights reserved.
//

import UIKit

class Outcome: UIViewController {
    
    var WLValue: Int?
    @IBOutlet weak var WLText: UILabel!
    
    @IBAction func tryAgain(sender: AnyObject) {
        var controller: StartPage
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("firstPage") as! StartPage
        self.presentViewController(controller, animated: true, completion: nil)
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
