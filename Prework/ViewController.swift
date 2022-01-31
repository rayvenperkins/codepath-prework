//
//  ViewController.swift
//  Prework
//
//  Created by Rayven Perkins on 1/30/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountField: UITextField!
    
    @IBOutlet weak var tipAmountLabel1: UILabel!
    @IBOutlet weak var totalAmountLabel1: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel2: UILabel!
    @IBOutlet weak var PercentageLabel: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var totalAmountLabel2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel1.text = String(format: "$%.2f", tip)
        totalAmountLabel1.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func percentageSlide(_ sender: UISlider) {
        PercentageLabel.text! = "Percentage: " + "around " +  String(Int(sender.value)) + "%"
    }
    
    @IBAction func calculateTotal(_ sender: UIButton) {
        let tipAmount = Double(billAmountField.text!)! * Double(sliderValue.value/100)
        
        let total = tipAmount + Double(billAmountField.text!)!
        tipAmountLabel2.text! = String(format: "$%.2f", tipAmount)
        totalAmountLabel2.text! = String(format: "$%.2f", total)
        
    }
    
}

