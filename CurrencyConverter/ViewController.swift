//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Gene Mueller on 6/23/23.
//

import UIKit

class ViewController: UIViewController {
    // switch values
    var euro = true
    var yen = false
    var rupee = false
    var ruble = false
    // currency conversion values
    var euro_value : Float = 1.09
    var yen_value : Float = 0.007
    var rupee_value : Float = 0.013
    var ruble_value : Float = 0.012
    // currency final values
    var euro_total : Float = 0
    var yen_total : Float = 0
    var rupee_total : Float = 0
    var ruble_total : Float = 0
    
    @IBOutlet weak var currency_field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func euro_switch(_ sender: UISwitch) {
        if sender.isOn {
            euro = true
        } else {
            euro = false
        }
    }
    @IBAction func yen_switch(_ sender: UISwitch) {
        if sender.isOn {
            yen = true
        } else {
            yen = false
        }
    }
    @IBAction func rupee_switch(_ sender: UISwitch) {
        if sender.isOn {
            rupee = true
        } else {
            rupee = false
        }
    }
    @IBAction func ruble_switch(_ sender: UISwitch) {
        if sender.isOn {
            ruble = true
        } else {
            ruble = false
        }
    }
    @IBAction func convert_button(_ sender: UIButton) {
        // create the alert
        let alert = UIAlertController(title: "Invalid Value", message: "Please enter an integer.", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        if (Int(currency_field.text!) == nil) {
            self.present(alert, animated: true, completion: nil)
        } else {
            let usd = Float(currency_field.text!)
            euro_total = usd! * euro_value
            yen_total = usd! * yen_value
            rupee_total = usd! * rupee_value
            ruble_total = usd! * ruble_value
            
            print(euro_total)
            print(yen_total)
            print(rupee_total)
            print(ruble_total)
        }
        
        
        
    }
    
    
}

