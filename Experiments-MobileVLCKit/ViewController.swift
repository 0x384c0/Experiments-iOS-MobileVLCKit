//
//  ViewController.swift
//  Experiments-MobileVLCKit
//
//  Created by Andrew Ashurow on 15.11.16.
//  Copyright © 2016 Andrew Ashurow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playerDrawable: UIView!
    
    let
    player = VLCMediaPlayer(),
    media = VLCMedia(url: URL(string: "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"))
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        player.media = media
        player.drawable = playerDrawable
    }

    @IBAction func togglePlayer(_ sender: Any) {
        
        if player.isPlaying {
            player.pause()
            
            let remaining = player.remainingTime
            let time = player.time
            
            print("Paused at \(time) with \(remaining) time remaining")
        }
        else {
            player.play()
            print("Playing")
        }
    }
}

