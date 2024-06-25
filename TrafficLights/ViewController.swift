//
//  ViewController.swift
//  TrafficLights
//
//  Created by Анастасия Восколович on 13.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startNextButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = 70
        yellowLight.layer.cornerRadius = 70
        greenLight.layer.cornerRadius = 70

    }

    @IBAction func switchingTrafficLights(_ sender: UIButton) {
        sender.setTitle(
            startNextButton.isTouchInside ? "NEXT" : "START",
            for: .normal)
        
        switch startNextButton.isTouchInside {
        case redLight.alpha == 1:
            redLight.alpha = 0.4
            yellowLight.alpha = 1
        case yellowLight.alpha == 1:
            yellowLight.alpha = 0.4
            greenLight.alpha = 1
        case greenLight.alpha == 1:
            greenLight.alpha = 0.4
            redLight.alpha = 1
        default:
            redLight.alpha = 1
        }
    }
    
}

