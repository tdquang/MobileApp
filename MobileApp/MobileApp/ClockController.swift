//
//  ClockController.swift
//  MobileApp
//
//  Created by Quang Tran Dang on 20.04.15.
//  Copyright (c) 2015 Quang Tran Dang. All rights reserved.
//
// This class creates a stopwatch on top of a background gif.
//

import UIKit

class ClockController: UIViewController {
    //@IBOutlet weak var currentTimeLabel: UILabel!
    var timer = NSTimer()
    var clockLabel = UILabel()
    var startTime = NSTimeInterval()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creates the gif using a webView
        var filePath = NSBundle.mainBundle().pathForResource("giphy", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath!)
        var webViewBG = UIWebView(frame: self.view.frame)
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = false;
        self.view.addSubview(webViewBG)
       
        //fades the gif to the background so we can add more views on top
        var filter = UIView()
        filter.frame = self.view.frame
        filter.backgroundColor = UIColor.blackColor()
        filter.alpha = 0.05
        self.view.addSubview(filter)
        
        
        //Instatiates the clock label
        clockLabel = UILabel(frame: CGRectMake(0, (self.view.bounds.size.height/2 - 100), self.view.bounds.size.width, 100))
        clockLabel.text = "00:00:00"
        clockLabel.textColor = UIColor.whiteColor()
        clockLabel.font = UIFont.systemFontOfSize(50)
        clockLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(clockLabel)
        
        //creates the start button
        var startButton = UIButton(frame: CGRectMake(self.view.bounds.size.width/2 - 100, self.view.bounds.size.height - 85, 100, 40))
        startButton.layer.borderColor = UIColor.brownColor().CGColor
        startButton.layer.borderWidth = 2
        startButton.titleLabel!.textColor = UIColor.brownColor()
        startButton.titleLabel!.font = UIFont.systemFontOfSize(24)
        startButton.tintColor = UIColor.brownColor()
        startButton.backgroundColor = UIColor.brownColor()
        startButton.setTitle("START", forState: UIControlState.Normal)
        startButton.addTarget(self, action: "handleStartButton:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(startButton)
        
        //creates the stop button
        var stopButton = UIButton(frame: CGRectMake(self.view.bounds.size.width/2 + 10, self.view.bounds.size.height - 85, 100, 40))
        stopButton.layer.borderColor = UIColor.brownColor().CGColor
        stopButton.layer.borderWidth = 2
        stopButton.titleLabel!.textColor = UIColor.brownColor()
        stopButton.titleLabel!.font = UIFont.systemFontOfSize(24)
        stopButton.tintColor = UIColor.brownColor()
        stopButton.backgroundColor = UIColor.brownColor()
        stopButton.setTitle("STOP", forState: UIControlState.Normal)
        stopButton.addTarget(self, action: "handleStopButton:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(stopButton)
        
    }
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //function used to update time by subtracting the system time when the start button is clicked from teh current system time
    func updateTime() {
        
        var currentTime = NSDate.timeIntervalSinceReferenceDate()
        
        //Find the difference between current time and start time.
        var elapsedTime: NSTimeInterval = currentTime - startTime
        
        //calculate the minutes in elapsed time.
        let minutes = UInt8(elapsedTime / 60.0)
        elapsedTime -= (NSTimeInterval(minutes) * 60)
        
        //calculate the seconds in elapsed time.
        let seconds = UInt8(elapsedTime)
        elapsedTime -= NSTimeInterval(seconds)
        
        //find out the fraction of milliseconds to be displayed.
        let fraction = UInt8(elapsedTime * 100)
        
        //add the leading zero for minutes, seconds and millseconds and store them as string constants
        let strMinutes = minutes > 9 ? String(minutes):"0" + String(minutes)
        let strSeconds = seconds > 9 ? String(seconds):"0" + String(seconds)
        let strFraction = fraction > 9 ? String(fraction):"0" + String(fraction)
        
        //concatenate minuets, seconds and milliseconds as assign it to the UILabel
        clockLabel.text = "\(strMinutes):\(strSeconds):\(strFraction)"
        
    }

    //handles the start button click
    @IBAction func handleStartButton(sender: UIButton!){
        //checks if the timer is valid
        if !timer.valid {
            let aSelector : Selector = "updateTime"
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: aSelector, userInfo: nil, repeats: true)
            startTime = NSDate.timeIntervalSinceReferenceDate()
        }
        
    }
    
    //handles the stop button click
    @IBAction func handleStopButton(sender: UIButton!){
        //invalidates timer
        timer.invalidate()
    }
    
    
    
    

}
