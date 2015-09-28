//
//  SPRangeSelectViewController.swift
//  WouldYouRather
//
//  Created by zach bundarin on 9/21/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class SPRangeSelectViewController: UIViewController {
    
    
    
    @IBOutlet weak var UserInputTextFieldSP: UITextField!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var secondVC: SPaskquestionVC = segue.destinationViewController as! SPaskquestionVC
        
        
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
