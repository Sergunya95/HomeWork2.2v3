//
//  ViewController.swift
//  HomeWork2.2v3
//
//  Created by apple on 10/17/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLevelLabel: UILabel!
    @IBOutlet var greenLevelLabel: UILabel!
    @IBOutlet var blueLevelLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLevelLabel.text = ""
        greenLevelLabel.text = ""
        blueLevelLabel.text = ""
        
    }

    @IBAction func redSliderAction() {
    }
    @IBAction func greenSliderAction() {
    }
    @IBAction func blueSliderAction() {
    }
    
   
}

