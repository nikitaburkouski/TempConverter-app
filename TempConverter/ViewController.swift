//
//  ViewController.swift
//  TempConverter
//
//  Created by Nikita on 10/29/20.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
            
        }
    }
    
    
    
    @IBAction func slaiderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
     
            fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    
    }
    
}





