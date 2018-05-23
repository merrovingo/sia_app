//
//  FirstViewController.swift
//  sia_app
//
//  Created by Enrique Tezozomoc Perez Campos on 5/21/18.
//  Copyright © 2018 Enrique Tezozomoc Perez Campos. All rights reserved.
//

import UIKit
import AVFoundation

class FirstViewController: UIViewController {

    // Instancia de audio
    var audioPlayer = AVAudioPlayer()
    
    // Boton reproduce audio
    @IBAction func busqueda_1(_ sender: Any) {
        audioPlayer.play()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Reproduccion de audio
        do {
            let audioPath = Bundle.main.path(forResource: "search_1", ofType: "wav")
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            // error
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

