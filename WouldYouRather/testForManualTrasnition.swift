//
//  testForManualTrasnition.swift
//  WouldYouRather
//
//  Created by zach bundarin on 9/28/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class testForManualTrasnition: UIViewController {
    
    
    
    var recevedStringForPlayerTwo: String = ""
    var recevedStringForPlayerOne: String = ""
    var recevedStringForRangeNumber: String = ""
    
    //PlayerTwoGuessLabel.text = recevedStringForPlayerTwo
    
    @IBOutlet weak var SegueingVarFromFirstVC: UILabel!
    
    @IBOutlet weak var countDown3: UILabel!
    
    @IBOutlet weak var countDown2: UILabel!
    
    @IBOutlet weak var countDown1: UILabel!
    
    @IBOutlet weak var PlayerTwoGuessLabel: UILabel!
    
    @IBOutlet weak var PlayerOneGuessLabel: UILabel!
    
    @IBOutlet weak var playerTwoGuessNumber: UILabel!
    
    @IBOutlet weak var playerOneGuessNumber: UILabel!
    
    @IBOutlet weak var WinLabel: UILabel!
    
    
    
    
    
    
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
        
        
//        UIView.animateWithDuration(1.5, animations: {
//            self.countDown1.alpha = 1.0
//            self.countDown2.alpha = 2.0
//            self.countDown3.alpha = 3.0
//        })
//    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        print(recevedStringForPlayerOne)
        print(recevedStringForPlayerTwo)
        super.viewDidLoad()
        playerTwoGuessNumber.text = recevedStringForPlayerTwo
        playerOneGuessNumber.text = recevedStringForPlayerOne
        WinLabel.text = "The numbers were the same!"
        
        
        //playerOneGuessNumber.text = "test"
        
        if playerOneGuessNumber.text!.toInt() != playerTwoGuessNumber.text!.toInt() {
            WinLabel.text = "The numbers were different! Try again!"
        }
        
        
        
        
        //countDown3.hidden = true
        //countDown2.hidden = true
        //sleep(1)
        //countDown1.hidden = true
        //countDown2.hidden = false
        //sleep(1)
        //countDown2.hidden = true
        //countDown3.hidden = false
        
        //var recevedStringForPlayerTwo: String = ""
        //PlayerTwoGuessLabel.text = recevedStringForPlayerTwo
        
        
        

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
