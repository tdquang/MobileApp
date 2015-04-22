//
//  SoundController.swift
//  MobileApp Development
//
//  Quang Tran and Anmol Raina
//  This class handles the sound button by playing mp3 files specific to the character
//

import UIKit
import AVFoundation

class SoundController: UIViewController {
    
    
    var scoobySound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("scoobydoo", ofType: "mp3")!)
    var freddySound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("freddy", ofType: "mp3")!)
    var velmaSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("velma", ofType: "mp3")!)
    var daphneySound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("daphney", ofType: "mp3")!)
    var shaggySound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("shaggy", ofType: "mp3")!)

    var scoobyPlayer = AVAudioPlayer()
    var freddyPlayer = AVAudioPlayer()
    var velmaPlayer = AVAudioPlayer()
    var daphneyPlayer = AVAudioPlayer()
    var shaggyPlayer = AVAudioPlayer()
    
    // Keeping track of the number of touches. Touching a character button second time would pause the mp3 file
    var numOfTouchesScooby = 0
    var numOfTouchesFreddy = 0
    var numOfTouchesVelma = 0
    var numOfTouchesDaphney = 0
    var numOfTouchesShaggy = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoobyPlayer = AVAudioPlayer(contentsOfURL: scoobySound, error: nil)
        scoobyPlayer.prepareToPlay()
        
        freddyPlayer = AVAudioPlayer(contentsOfURL: freddySound, error: nil)
        freddyPlayer.prepareToPlay()
    
        
        velmaPlayer = AVAudioPlayer(contentsOfURL: velmaSound, error: nil)
        velmaPlayer.prepareToPlay()
        
        daphneyPlayer = AVAudioPlayer(contentsOfURL: daphneySound, error: nil)
        daphneyPlayer.prepareToPlay()
        
        shaggyPlayer = AVAudioPlayer(contentsOfURL: shaggySound, error: nil)
        shaggyPlayer.prepareToPlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // The following functions play mp3 files
    
    @IBAction func handleScoobyButton() {
        numOfTouchesScooby++
        if (numOfTouchesScooby % 2 != 0){
            scoobyPlayer.play()
        }
        else{
            scoobyPlayer.pause()
        }
    }
    
    @IBAction func handleFreddyButton() {
        numOfTouchesFreddy++
        if (numOfTouchesFreddy % 2 != 0){
            freddyPlayer.play()
        }
        else{
            freddyPlayer.pause()
        }
    }
    
    @IBAction func handleVelmaButton() {
        numOfTouchesVelma++
        if (numOfTouchesVelma % 2 != 0){
            velmaPlayer.play()
        }
        else{
            velmaPlayer.pause()
        }
    }
    
    @IBAction func handleDaphneyButton() {
        numOfTouchesDaphney++
        if (numOfTouchesDaphney % 2 != 0){
            daphneyPlayer.play()
        }
        else{
            daphneyPlayer.pause()
        }
    }
    
    @IBAction func handleShaggyButton() {
        numOfTouchesShaggy++
        if (numOfTouchesShaggy % 2 != 0){
            shaggyPlayer.play()
        }
        else{
            shaggyPlayer.pause()
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
