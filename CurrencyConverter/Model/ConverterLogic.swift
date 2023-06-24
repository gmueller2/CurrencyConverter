//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by Gene Mueller on 6/24/23.
//

import Foundation

struct ConverterLogic {
    
    // switch values
    var euro = true
    var yen = false
    var rupee = false
    var ruble = false
    
    // currency conversion values
    var euro_value : Float = 0.91
    var yen_value : Float = 143.70
    var rupee_value : Float = 81.99
    var ruble_value : Float = 84.62
    
    // final converted amounts (string values)
    var usd_amount = ""
    var euro_amount = ""
    var yen_amount = ""
    var rupee_amount = ""
    var ruble_amount = ""
    
    mutating func set_euro_switch(_ switchValue: Bool) {
        if switchValue {
            euro = true
        } else {
            euro = false
        }
    }
    
    mutating func set_yen_switch(_ switchValue: Bool) {
        if switchValue {
            yen = true
        } else {
            yen = false
        }
    }
    
    mutating func set_rupee_switch(_ switchValue: Bool) {
        if switchValue {
            rupee = true
        } else {
            rupee = false
        }
    }
    
    mutating func set_ruble_switch(_ switchValue: Bool) {
        if switchValue {
            ruble = true
        } else {
            ruble = false
        }
    }
    
    func convert_euro (_ usd_value: Int) -> Float {
        let usd = Float(usd_value)
        let euro_total = usd * euro_value
        return euro_total
    }
    
    func convert_yen (_ usd_value: Int) -> Float {
        let usd = Float(usd_value)
        let yen_total = usd * yen_value
        return yen_total
    }
    
    func convert_rupee (_ usd_value: Int) -> Float {
        let usd = Float(usd_value)
        let rupee_total = usd * rupee_value
        return rupee_total
    }
    
    func convert_ruble (_ usd_value: Int) -> Float {
        let usd = Float(usd_value)
        let ruble_total = usd * ruble_value
        return ruble_total
    }
    
    mutating func convert_currency(_ usd_value: Int) {
        usd_amount = "USD Amount: " + String(format: "%.2f", Float(usd_value))
        if (euro == true) {
            euro_amount = "Euro Amount: " + String(format: "%.2f", convert_euro(usd_value))
        } else {
            euro_amount = ""
        }
        if (yen == true) {
            yen_amount = "Yen Amount: " + String(format: "%.2f", convert_yen(usd_value))
        } else {
            yen_amount = ""
        }
        if (rupee == true) {
            rupee_amount = "Rupee Amount: " + String(format: "%.2f", convert_rupee(usd_value))
        } else {
            rupee_amount = ""
        }
        if (ruble == true) {
            ruble_amount = "Ruble Amount: " + String(format: "%.2f", convert_ruble(usd_value))
        } else {
            ruble_amount = ""
        }
    }
}
