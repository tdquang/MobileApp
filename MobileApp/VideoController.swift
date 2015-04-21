//
//  VideoController.swift
//  MobileApp
//
//  Created by Quang Tran Dang on 19.04.15.
//  Copyright (c) 2015 Quang Tran Dang. All rights reserved.
//

import UIKit
import MediaPlayer

class VideoController: UIViewController {
    var moviePlayer : MPMoviePlayerController?
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo("scoobydoovid")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playVideo(videoName: String){
        let path = NSBundle.mainBundle().pathForResource(videoName, ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            //player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
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
