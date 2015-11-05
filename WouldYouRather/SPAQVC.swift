//
//  SPAQVC.swift
//  WouldYouRather
//
//  Created by zach bundarin on 10/12/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class SPAQVC: UIViewController {
    
    var globalUserTwoGuess: String = ""
    var globalUserOneGuess: String = ""
    
    
    @IBAction func testButton(sender: UIButton) {
    }
    
    var receivedString: String =  ""
    @IBOutlet weak var labelToStoreMaxRange: UILabel!
    
    @IBOutlet weak var mainTitleForAsk: UILabel!
    
    @IBOutlet weak var textEnteryNumGuess: UITextField!
    
    @IBOutlet weak var maxRangeWarningText: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    var buttonItterationCounter = 0
    
    
    @IBAction func buttonForTransferOfVC(sender: AnyObject?) {
    }
    
    @IBOutlet weak var buttonForFirstInput: UIButton!
    
    func isInRange(guess: String) -> Bool {
        if guess.toInt() > receivedString.toInt() {
            maxRangeWarningText.hidden = false
            return false
        }
        return true
    }
    
    @IBAction func buttonForFirstInput(sender: UIButton) {
        
        if isInRange(textEnteryNumGuess.text) == true {
            if buttonItterationCounter == 1 {
                globalUserOneGuess = textEnteryNumGuess.text
                buttonForFirstInput.hidden = true
                textEnteryNumGuess.text = ""
            }
        
        
        
            if buttonItterationCounter == 0 {
                globalUserTwoGuess = textEnteryNumGuess.text
                buttonItterationCounter = 1
                mainTitleForAsk.text    = "Please have your friend enter their guess"
                textEnteryNumGuess.text = ""
            }
        }
        
            
        
            
            
            
            
            
            
            
            //UIButton *buttonvarforVC = [UIButton buttonWithType: UIButtonTypeRoundedRect];
            //buttonvarforVC.frame = CGRectMake(0,0,100,50)
            //buttonvarforVC.alpha = 0;
            //[self.view .addSubview:buttonvarforVC];
            //[UIView .animateWithDuration(0.3, animations: ^(void) { buttonvarforVC.alpha = 1; } ),
            
            //mainTitleForAsk.text = "Ran"
            //let TestForManualTransitionVariable = ViewController(nibName: nibName, bundle: nil)
            //self.presentViewController(TestForManualTransitionVariable, animated: true, completion: nil)
            //self.navigationController?.pushViewController(TestForManualTransitionVariable, animated: true)
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        rangeLabel.text = "1 in \(receivedString)"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var testForManualTransitionSegue: testForManualTrasnition = segue.destinationViewController as! testForManualTrasnition
        //testForManualTransitionSegue.recevedStringForPlayerTwo = playerTwoGuessNumber.text
        testForManualTransitionSegue.recevedStringForPlayerTwo = globalUserTwoGuess
        var testForManualTransitionSegueTwo : testForManualTrasnition = segue.destinationViewController as! testForManualTrasnition
        testForManualTransitionSegueTwo.recevedStringForPlayerOne = globalUserOneGuess
        var testForManualTransitionSegueRangeNumber : testForManualTrasnition = segue.destinationViewController as! testForManualTrasnition
        testForManualTransitionSegueRangeNumber.recevedStringForRangeNumber = receivedString
        
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
