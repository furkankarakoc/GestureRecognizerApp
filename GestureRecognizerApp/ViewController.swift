//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Furkan Karakoc on 14.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    var isMickey = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changePic() {
     if isMickey == true {
            imageView.image = UIImage(named: "minnie")
            imageLabel.text = "Minnie"
            isMickey = false
      } else {
            imageView.image = UIImage(named: "mickey")
            imageLabel.text = "Mickey"
            isMickey = true
        }
    }
}

