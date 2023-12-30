//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func notePressed(_ sender: UIButton) {
        
        print("Pressed \(sender.tag)")
        var avPlayer = AVAudioPlayer()
        
        guard let url = Bundle.main.url(forResource: "Game", withExtension: "mp3")
           else {
              return
           }
           do {
               avPlayer = try AVAudioPlayer(contentsOf: url)
              avPlayer.play()
           }
           catch {
           }
    }
}
