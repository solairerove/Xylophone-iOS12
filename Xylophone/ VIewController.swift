//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let tag = sender.tag
        do {
            if let fileURL = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav") {
                audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
                print("exists")
            } else {
                print("No file with specified name exists")
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
        }
        
        audioPlayer.play()
    }
}

