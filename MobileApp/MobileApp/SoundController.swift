//
//  SoundController.swift
//  MobileApp
//
//  Created by Quang Tran Dang on 18.04.15.
//  Copyright (c) 2015 Quang Tran Dang. All rights reserved.
//

import UIKit
import AVFoundation

class SoundController: UIViewController {
    var scoobySound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("scoobydoo", ofType: "mp3")!)
    var audioPlayer = AVAudioPlayer()
    var numOfTouchesScooby = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer = AVAudioPlayer(contentsOfURL: scoobySound, error: nil)
        audioPlayer.prepareToPlay()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleScoobyButton() {
        numOfTouchesScooby++
        if (numOfTouchesScooby % 2 != 0){
            audioPlayer.play()
        }
        else{
            audioPlayer.pause()
        }
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
