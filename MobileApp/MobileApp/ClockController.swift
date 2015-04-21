//
//  ClockController.swift
//  MobileApp
//
//  Created by Quang Tran Dang on 20.04.15.
//  Copyright (c) 2015 Quang Tran Dang. All rights reserved.
//

import UIKit

class ClockController: UIViewController {
    //@IBOutlet weak var currentTimeLabel: UILabel!
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*var filePath = NSBundle.mainBundle().pathForResource("giphy", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath!)
        var webViewBG = UIWebView(frame: self.view.frame)
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = false;
        self.view.addSubview(webViewBG)*/
        //self.currentTimeLabel.text = "message"
        
        /* self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0,
            target: self,
            selector: Selector("tick"),
            userInfo: nil,
            repeats: true)*/
    }
    /*@objc func tick() {
        currentTimeLabel.text = NSDateFormatter.localizedStringFromDate(NSDate(),
            dateStyle: .MediumStyle,
            timeStyle: .MediumStyle)
    }
*/
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
