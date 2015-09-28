//
//  SPaskquestionVC.swift
//  WouldYouRather
//
//  Created by zach bundarin on 9/17/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class SPaskquestionVC: UIViewController {

    @IBAction func testButton(sender: AnyObject) {
    }
   
    var receivedString: String =  ""
    @IBOutlet weak var labelToStoreMaxRange: UILabel!
    
    @IBOutlet weak var mainTitleForAsk: UILabel!
    
    @IBOutlet weak var textEnteryNumGuess: UITextField!
    
   
    var buttonItterationCounter = 0
    
    
    
    
    @IBAction func buttonForFirstInput(sender: UIButton) {
        
        
        if buttonItterationCounter == 1 {
            let userTwoGuess = textEnteryNumGuess.text
            buttonItterationCounter = 2
            textEnteryNumGuess.text = ""
        }
    
        
        if buttonItterationCounter == 0 {
        let userOneGuess = textEnteryNumGuess.text
            buttonItterationCounter = 1
            mainTitleForAsk.text    = "Please have your friend enter their guess"
            textEnteryNumGuess.text = ""

        }
        if buttonItterationCounter == 2 {
            let TestForManualTransitionVariable = self.storyboard.instantiateViewControllerWithIdentifier("SecondViewControler") as testForManualTrasnition
            self.presentViewController(
                testForManualTransition, animated: true, completion: nil)
        }
    

}

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //labelToStoreMaxRange.text = receivedString
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
