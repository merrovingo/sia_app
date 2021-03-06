//
//  busquedaViewController.swift
//  sia_app
//
//  Created by Enrique Tezozomoc Perez Campos on 5/23/18.
//  Copyright © 2018 Enrique Tezozomoc Perez Campos. All rights reserved.
//

import UIKit
import AVFoundation

class busquedaViewController: UIViewController {
    
    // Instancia de audio
    var audioPlayer = AVAudioPlayer()
    
    // Boton de reproduccion
    @IBAction func busqueda_2(_ sender: Any) {
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Reproduccion de audio
        do {
        let audioPath = Bundle.main.path(forResource: "search_2", ofType: "wav")
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
