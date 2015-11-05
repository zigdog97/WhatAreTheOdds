

//
//  SecondVCCPU.swift
//  WouldYouRather
//
//  Created by zach bundarin on 10/5/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class SecondVCCPU: UIViewController {
    var recievedString = ""
    var segueDareLabel = ""
    @IBOutlet weak var numberRangeLimitWarning: UILabel!
    @IBOutlet weak var CPULabel2ndVC: UILabel!
    @IBOutlet weak var SecondVCQuestion: UILabel!

    @IBOutlet weak var GuessNumberInput: UITextField!
    @IBOutlet weak var RangeCPULabel: UILabel!
    
    @IBAction func ReadyButton2ndVC(sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberRangeLimitWarning.hidden = true
    

        RangeCPULabel.text = "1 to \(recievedString)"
        let rangeInt = RangeCPULabel.text?.toInt()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String!,
        sender: AnyObject!) -> Bool {
            if GuessNumberInput.text.toInt() > recievedString.toInt() {
                numberRangeLimitWarning.hidden = false
                return false
            }
            return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var thirdVC: ThirdVCCPU = segue.destinationViewController as! ThirdVCCPU
        thirdVC.secondRecievedString = GuessNumberInput.text
        thirdVC.rangeRecievedString = recievedString
        thirdVC.segueDareLabel = segueDareLabel
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
