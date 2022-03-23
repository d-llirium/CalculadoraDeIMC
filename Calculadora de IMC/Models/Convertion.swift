//
//  Slider.swift
//  Calculadora de IMC
//
//  Created by user on 23/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct Convertion {
    
    func convertToDouble(
        _ floatValue: Float,
        _ digits: Double
    ) -> Double
    {
        let convertedValue = Double(
            floatValue
        )
        let rounded = Double(
            round( digits * convertedValue ) / digits
        )
        
        return rounded
    }
}
