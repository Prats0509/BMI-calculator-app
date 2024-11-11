//
//  ViewController.swift
//  Assignment_02
//
//  Created by english on 2024-09-18.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightField: UITextField!
    
    
    @IBOutlet weak var weightField: UITextField!
    
    
    @IBOutlet weak var resultField: UILabel!
    
    
    @IBAction func CalculateBMI(_ sender: UIButton) {
        
        self.view.endEditing(true)
        guard let height = heightField.text,let inputHeight = Float(height)  else{resultField.text = "Please enter your height";
            resultField.alpha = 0;
            return}
        guard let weight = weightField.text,let inputWeight = Float(weight)  else{resultField.text = "Please enter your weight ";
            resultField.alpha = 0;
            return}
                
                
        let bmiCalculated = calculate(height: inputHeight, weight: inputWeight)
        
       var classification = " ";
              
        if(bmiCalculated<18.5)
        {
            classification = "Underweight";
        }
        else if(bmiCalculated >= 18.5 && bmiCalculated <= 24.9)
        {
            classification = "Normal weight";
        }
        else if(bmiCalculated>25.0 && bmiCalculated <= 29.9)
        {
            classification = "Overweight";
        
        }
        else{
            classification = "Obesity"
        }
        resultField.alpha = 1;
        resultField.text = "BMI Classification = \(classification)";
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultField.alpha = 0;
    }
    func calculate(height: Float, weight: Float) -> Float {
            let bmi = weight / (height * height)
            return bmi
        }


}

