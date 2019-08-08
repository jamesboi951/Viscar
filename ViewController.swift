//
//  ViewController.swift
//  Honda_Hack_2019
//
//  Created by James Boisvert on 1/18/19.
//  Copyright © 2019 James Boisvert. All rights reserved.
//

import UIKit
import AVKit
import FirebaseDatabase

class ViewController: UIViewController {

    
    
    @IBOutlet weak var Open_image: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let ref = Database.database().reference()
        
        Open_image.image = UIImage(named: "Honda_logo")
        self.apply_round(Open_image)
        //self.apply_round(Driver_Mode)
        //self.apply_round(Developer_Mode)
        
        
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        self.Open_image.layer.cornerRadius = 100.0
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    
    @IBAction func Developer_mode(_ sender: Any) {
        
       // if let path = Bundle.main.path(forResource: "Recfile P3 Edge 20181120 104743 Webcam Logitech Forward Outputiplimage", ofType: "m4v"){
            //let video = AVPlayer(url: URL(fileURLWithPath: path))
           // let videoPlayer = AVPlayerViewController()
           // videoPlayer.player = video
            
            
        //}
        
        performSegue(withIdentifier: "segue", sender: nil)
        
    }
    
    func apply_round(_ object: AnyObject){
        if #available(iOS 12.0, *) {
            object.layer.cornerRadius = object.frame.size.width/4
        } else {
            // Fallback on earlier versions
        }
        object.layer.masksToBounds = true
        
        
    }


}

