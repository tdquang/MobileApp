//
//  VideoController.swift
//  MobileApp Development
//
//  Quang Tran and Anmol Raina
//  This class plays a video

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



}
