//
//  SPRangeSelectViewController.swift
//  WouldYouRather
//
//  Created by zach bundarin on 9/21/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class SPRangeSelectViewController: UIViewController {
    
    
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var UserInputTextFieldSP: UITextField!
    
    
    
    @IBAction func segButton(sender: AnyObject) {
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.hidden = true
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func shouldPerformSegueWithIdentifier(identifier: String!,
        sender: AnyObject!) -> Bool {
            if UserInputTextFieldSP.text != "" {
                if UserInputTextFieldSP.text.toInt() > 1000 {
                    warningLabel.text = "Cannot set limit above 1000! :("
                    warningLabel.hidden = false
                    return false 
                }
            } else {
                warningLabel.hidden = false
                warningLabel.text = "Please enter a number range!"
                return false
            }
            return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var secondVC: SPAQVC = segue.destinationViewController as! SPAQVC
        
        
        secondVC.receivedString = UserInputTextFieldSP.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
