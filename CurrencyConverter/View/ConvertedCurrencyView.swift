//
//  ConvertedCurrencyView.swift
//  CurrencyConverter
//
//  Created by Gene Mueller on 6/24/23.
//

import UIKit

class ConvertedCurrencyView: UIViewController {

    @IBOutlet weak var usd_output: UILabel!
    @IBOutlet weak var euro_output: UILabel!
    @IBOutlet weak var yen_output: UILabel!
    @IBOutlet weak var rupee_output: UILabel!
    @IBOutlet weak var ruble_output: UILabel!
    
    // amount variables
    
    var usd_amount = ""
    var euro_amount = ""
    var yen_amount = ""
    var rupee_amount = ""
    var ruble_amount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usd_output.text = usd_amount
        euro_output.text = euro_amount
        yen_output.text = yen_amount
        rupee_output.text = rupee_amount
        ruble_output.text = ruble_amount
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismiss_pressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
