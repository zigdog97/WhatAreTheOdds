//
//  CPUVC.swift
//  WouldYouRather
//
//  Created by zach bundarin on 9/2/15.
//  Copyright (c) 2015 Zach Bundarin. All rights reserved.
//

import UIKit

class CPUVC: UIViewController {
    
    @IBOutlet weak var dareQuestion: UILabel!

    @IBOutlet weak var FirstCPUTitle: UINavigationBar!
    
    @IBOutlet weak var InLabelOne: UILabel!
    
    @IBOutlet weak var RangeInputToTextField: UITextField!
  
    
    
    @IBAction func StartButtonCPU(sender: UIButton) {
    }
    
    var questionList = [String](arrayLiteral: "Hug a tree","Ask someone how they are doing and start barking when they talk","Sit at a random table where you know no one","stare at someone until they look at you","ask for someone’s phone and walk away when they bring it out","take something from someone","walk around in a circle 10 times","lay on the ground","lock someone's phone","hold a conversation with a wall","talk to an invisible friend for a while","pour water on someone","take as many pictures as you can on someones phone","Nugget someone's backpack/lunch box","Un-tuck a random persons shirt or tuck it in","Make eye contact with someone for 15 seconds (with a straight face)","Shave your legs","Shave your arms","Shave some of your head","Hit the Quan","LARP with any objects around you","Wherever you are, get up and sing a song","Mimic a person you see","Instead of saying hello to the next person that calls you, say “you're gonna die” then hang up","Be Fetty Wap for 30 minutes","Step on a lego","go to nearest water source and reenact the titanic.","talk like nigel thornberry for 1 minute","reenact your favorite disney song with a stranger","reenact a scene from “Jimmy Neutron”","do parkour for 15 seconds","pretend to be on a hunt in the african forest","walk out from a room doing the crab walk","ding dong ditch someone's house","reenact a scene from ANY old spice commercial with a stranger","Go up to a random person you don’t know and say hi and walk away","Give yourself a haircut","Lick the floor","Take a shower with your clothes on","Ask a random boy or girl for their number","Give a random person a sharpie and tell them to write something on your body","Fake propose to someone you don’t know","Sing a song you love at the top of your lungs","Repeat everything someone says when around them","Soak your t-shirt with water and then put it in the freezer for 20 minutes and then wear the shirt","Go up to someone and tell them that you have lost your voice and ask them if they have seen it anywhere","Pound on your chest and yell like you are Tarzan in front of people you don’t know","Go to your neighbor’s house and ask if you can borrow their umbrella")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var randomindex = Int(arc4random_uniform(UInt32(questionList.count)))
        dareQuestion.text = questionList[randomindex]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var secondVC: SecondVCCPU = segue.destinationViewController as! SecondVCCPU
        secondVC.recievedString = RangeInputToTextField.text
        secondVC.segueDareLabel = dareQuestion.text!
    }
}
