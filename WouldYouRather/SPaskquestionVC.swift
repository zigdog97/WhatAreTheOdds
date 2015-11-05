//
//  SPaskquestionVC.swift
//  WouldYouRather
//
//  Created by zach bundarin on 9/17/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class SPasquestionVC: UIViewController {

    @IBAction func testButton(sender: UIButton) {
    }

    var receivedString: String =  ""
    @IBOutlet weak var labelToStoreMaxRange: UILabel!
    
    @IBOutlet weak var mainTitleForAsk: UILabel!
    
    @IBOutlet weak var textEnteryNumGuess: UITextField!
    
   
    var buttonItterationCounter = 0
    
    
    @IBAction func buttonForTransferOfVC(sender: AnyObject?) {
    }
    
    
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
            func bringSubviewToFront(testButton: UIView){
            }
            func sendSubviewToBack(buttonforFirstInput: UIView){
                    
            }
        }
        if buttonItterationCounter == 2 {
            
            
            
            
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var secondVC: SecondVCCPU = segue.destinationViewController as! SecondVCCPU
        secondVC.recievedString = textEnteryNumGuess.text}
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


