//
//  ViewController.swift
//  Audio
//
//  Created by Sezer Tunca on 30/05/2016.
//  Copyright © 2016 Sezer Tunca. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    private var alarmAudioPlayer: AVAudioPlayer?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if let sound = NSDataAsset(name: "test-audio")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                try alarmAudioPlayer = AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeAppleM4V)
            }
            catch
            {
                print("error initializing AVAudioPlayer")
            }
        }

    }
    
    @IBAction func playSound()
    {
        alarmAudioPlayer!.play()
    }
    
    @IBAction func pauseSound()
    {
        alarmAudioPlayer!.pause()
    }
    
    
    
}

