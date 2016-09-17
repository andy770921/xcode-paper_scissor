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
    var WLValueForStone: Int?
    var WLValueForSc: Int?
    @IBOutlet weak var ImageDisp: UIImageView!
    @IBOutlet weak var WLText: UILabel!
    
    @IBAction func tryAgain(sender: AnyObject) {
        var controller: StartPage
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("firstPage") as! StartPage
        self.presentViewController(controller, animated: true, completion: nil)
    }
    override func viewWillAppear(animated: Bool) {
        if let WLValue2 = self.WLValue {
            switch WLValue2 {
                case 1:
                    self.ImageDisp.image = UIImage(named: "StPa")
                    self.WLText.text = "Paper covers stone. You Win"
                case 2:
                    self.ImageDisp.image = UIImage(named: "ScPa")
                    self.WLText.text = "Papar are cut by Scissor. You Lose"
                default:
                    self.ImageDisp.image = nil
                    self.WLText.text = "Unknown"
            }
        }
    
        else if let WLValueForStone2 = self.WLValueForStone {
            switch WLValueForStone2 {
            case 1:
                self.ImageDisp.image = UIImage(named: "StSc")
                self.WLText.text = "Stone crushes scissor. You Win"
            case 2:
                self.ImageDisp.image = UIImage(named: "StPa")
                self.WLText.text = "Paper covers stone. You Lose"
            default:
                self.ImageDisp.image = nil
                self.WLText.text = "Unknown"
        
        }
        }
        else if let WLValueForSc2 = self.WLValueForSc {
            switch WLValueForSc2 {
            case 1:
                self.ImageDisp.image = UIImage(named: "ScPa")
                self.WLText.text = "Scissor cuts paper. You Win"
            case 2:
                self.ImageDisp.image = UIImage(named: "StSc")
                self.WLText.text = "Stone crushes scissor. You Lose"
            default:
                self.ImageDisp.image = nil
                self.WLText.text = "Unknown"
        }
        }
        
        
        else {
            self.ImageDisp.image = nil
        }
        
        //self.ImageDisp.alpha = 1

    }
    


    
    
}
