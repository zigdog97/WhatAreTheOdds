import UIKit
import MultipeerConnectivity

class MPCHandler: NSObject, MCSessionDelegate {
    var peerID:MCPeerID!
    // peerID is the id of every device connected in your area
    var session:MCSession!
    // session is when ever you connect to another device
    var browser:MCBrowserViewController!
    // browser is the thing you use to connect to someone
    var advertiser:MCAdvertiserAssistant? = nil
    // advertiser is the thing that shows that you are able to connect to
    
    func setupPeerWithDisplayName (diplayName:String){
        peerID = MCPeerID(displayName: diplayName)
        // this function displays the names of the devices
    }
    
    func setupSession(){
        session = MCSession(peer: peerID)
        session.delegate = self
        // this function lets you start a session
    }
    
    func setupBrowser(){
        browser = MCBrowserViewController(serviceType: "my-game", session:session)
        // this function is the browser that everyone in the session sees
        
    }
    
    func advertiseSelf(advertise:Bool){
        if advertise{
            advertiser = MCAdvertiserAssistant(serviceType: "my-game", discoveryInfo: nil, session: session)
            advertiser!.start()
        }else{
            advertiser!.stop()
            advertiser = nil
        }
    }
    func session(session: MCSession!, peer peerID: MCPeerID!, didChangeState state: MCSessionState) {
        let userInfo = ["peerId":peerID,"state":state.rawValue]
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            NSNotificationCenter.defaultCenter().postNotificationName("MPC_DidChangeStateNotification", object: nil, userInfo: userInfo)
        })
    }
    
    func session(session: MCSession!, didReceiveData data: NSData!, fromPeer peerID: MCPeerID!) {
        let userInfo = ["data":data,"peerID":peerID]
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            NSNotificationCenter.defaultCenter().postNotificationName("MPC_DidRecieveDataNotification", object: nil, userInfo: userInfo)
        })// these two functions above allow the app code to send notification to other functions
        
        
    }
    func session(session: MCSession!, didFinishReceivingResourceWithName resourceName: String!, fromPeer peerID: MCPeerID!, atURL localURL: NSURL!, withError error: NSError!) {
        
    }
    func session(session: MCSession!, didStartReceivingResourceWithName resourceName: String!, fromPeer peerID: MCPeerID!, withProgress progress: NSProgress!) {
        
    }
    func session(session: MCSession!, didReceiveStream stream: NSInputStream!, withName streamName: String!, fromPeer peerID: MCPeerID!) {
        
    }
}
