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
    
    @IBOutlet var multiColorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        
        redLevelLabel.text = String(redSlider.value)
        greenLevelLabel.text = String(greenSlider.value)
        blueLevelLabel.text = String(blueSlider.value)
        
    }

    func changeColor() {
        multiColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        changeColor()
        
        redLevelLabel.text = String(redSlider.value)
    }
    @IBAction func greenSliderAction() {
        changeColor()
       
        greenLevelLabel.text = String(greenSlider.value)
    }
    @IBAction func blueSliderAction() {
        changeColor()

        blueLevelLabel.text = String(blueSlider.value)
    }
    
}

