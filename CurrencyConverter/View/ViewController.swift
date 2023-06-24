//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Gene Mueller on 6/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currency_field: UITextField!
    var converter_logic = ConverterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func euro_switch(_ sender: UISwitch) {
        converter_logic.set_euro_switch(sender.isOn)
    }
    @IBAction func yen_switch(_ sender: UISwitch) {
        converter_logic.set_yen_switch(sender.isOn)
    }
    @IBAction func rupee_switch(_ sender: UISwitch) {
        converter_logic.set_rupee_switch(sender.isOn)
    }
    @IBAction func ruble_switch(_ sender: UISwitch) {
        converter_logic.set_ruble_switch(sender.isOn)
    }
    
    @IBAction func convert_button(_ sender: UIButton) {
        // create the alert
        let alert = UIAlertController(title: "Invalid Value", message: "Please enter an integer.", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        if (Int(currency_field.text!) == nil) {
            self.present(alert, animated: true, completion: nil)
        } else {
            converter_logic.convert_currency(Int(currency_field.text!)!)
            self.performSegue(withIdentifier: "toCurrencyConverted", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCurrencyConverted" {
            let navigation = segue.destination as! ConvertedCurrencyView
            navigation.usd_amount = converter_logic.usd_amount
            navigation.euro_amount = converter_logic.euro_amount
            navigation.yen_amount = converter_logic.yen_amount
            navigation.rupee_amount = converter_logic.rupee_amount
            navigation.ruble_amount = converter_logic.ruble_amount
        }
    }
}

