//
//  ViewController.swift
//  Traffic light
//
//  Created by Дмитрий Лебедев on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var redLightView: UIView!
    
    @IBOutlet weak var yellowLightView: UIView!
    
    @IBOutlet weak var greenLightView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.5
        yellowLightView.alpha = 0.5
        greenLightView.alpha = 0.5
        
        startButton.layer.cornerRadius = 20
        
    }
    override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      redLightView.layer.cornerRadius = redLightView.frame.width / 2
      yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
      greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
     }
    
    @IBAction func greetingStartButton() {
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.5
            yellowLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.5
            greenLightView.alpha = 1
        } else {
            redLightView.alpha = 1
            greenLightView.alpha = 0.5
            startButton.setTitle("Start", for: .normal)
        }
            
    }
}

