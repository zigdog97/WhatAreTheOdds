//
//  ThirdVCCPU.swift
//  WouldYouRather
//
//  Created by zach bundarin on 10/8/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class ThirdVCCPU: UIViewController {
    var secondRecievedString: String = ""
    var rangeRecievedString: String = ""
    var segueDareLabel: String = ""
    
    @IBOutlet weak var winCondition: UILabel!
   
    @IBOutlet weak var ResultsLabel: UILabel!
    
    @IBOutlet weak var DareLabel: UILabel!
    
    @IBOutlet weak var PlayerGuessLabel: UILabel!
    
    @IBOutlet weak var CPUGuessLabel: UILabel!
    
    @IBOutlet weak var RangeDisplayThirdVCCPU: UILabel!
    
    @IBAction func PlayAgainCPU(sender: UIButton) {
    }
    @IBAction func MainMenuButtonCPU(sender: UIButton) {
    }
    
    override func viewDidLoad() {
        winCondition.hidden = true
        var rangeInt: Int = rangeRecievedString.toInt()!
        print("range int =\(rangeInt)   ")
        CPUGuessLabel.text = String(arc4random_uniform(UInt32(rangeInt)+1))
        if CPUGuessLabel.text?.toInt() == 0 {
            CPUGuessLabel.text = String(CPUGuessLabel.text!.toInt()!+1)
        }
        DareLabel.text = segueDareLabel
        
        super.viewDidLoad()
        PlayerGuessLabel.text = secondRecievedString

        RangeDisplayThirdVCCPU.text = "The Range was 1 to \(rangeRecievedString)."
        var pGuess = PlayerGuessLabel.text!.toInt()!
        var CPUGuess = CPUGuessLabel.text!.toInt()!
        print("pGuess/CPUGuess = \(pGuess)")
        print(",\(CPUGuess)")
        if pGuess == CPUGuess {
            winCondition.text = "The numbers are the same! Do the dare!"
            winCondition.hidden = false
        } else {
            winCondition.text = "The numbers are different! You got lucky!"
            winCondition.hidden = false
        }                
        
        
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
