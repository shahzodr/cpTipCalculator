//
//  ViewController.swift
//  TipCalculatorApp
//
//  Created by SRP on 1/31/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTxt: UITextField!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipCalculate(_ sender: Any) {
        // Get bill amount from billAmountTxt
        let bill = Double(billAmountTxt.text!) ?? 0
        
        // Get total tip by multiplying bill * tipPercent
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipPercent.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        tipAmount.text = String(format: "$%.2f", tip)
        
        // Update total amount label
        totalAmount.text = String(format: "$%.2f", total)
        
    }
    

}

