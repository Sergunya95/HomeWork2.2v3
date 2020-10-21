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
        
        multiColorView.layer.cornerRadius = 10
        
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green

        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        
        redLevelLabel.text = String(format: "%.2f", redSlider.value)
        greenLevelLabel.text = String(format: "%.2f", greenSlider.value)
        blueLevelLabel.text = String(format: "%.2f", blueSlider.value)
        
    }

   
    
    @IBAction func redSliderAction() {
        changeColor()
        redLevelLabel.text = String(format: "%.2f", redSlider.value)
       
    }
    @IBAction func greenSliderAction() {
        changeColor()
        greenLevelLabel.text = String(format: "%.2f", greenSlider.value)
    }
    @IBAction func blueSliderAction() {
        changeColor()
        blueLevelLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    func changeColor() {
        multiColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
        green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

