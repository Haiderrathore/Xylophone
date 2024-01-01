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
    
    var avPlayer : AVAudioPlayer!
    let soundsArr = ["note1","note2","note3","note4","note5","note6","note7"]
    var selectedSound = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func notePressed(_ sender: UIButton) {
        selectedSound = soundsArr[sender.tag-1]
        print(selectedSound)
        playNotes()
       
    }
    
    func playNotes(){
        let url = Bundle.main.url(forResource: selectedSound, withExtension: "wav")
                 
                  do {
                      avPlayer = try AVAudioPlayer(contentsOf: url!)
                     avPlayer.play()
                  }
                  catch {
                  }
    }
}
