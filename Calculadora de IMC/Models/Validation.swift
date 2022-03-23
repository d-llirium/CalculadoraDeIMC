//
//  Validation.swift
//  Calculadora de IMC
//
//  Created by user on 23/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

class Validation {
    
    func showMessage(
        for result: Double
    ) -> String {
        switch result
        {
        case 16...16.9:
            return "Procure um medico"
        case 16.9...18.5:
            return "Coma mais!"
        case 18.6...24.9:
            return "Continue assim!"
        default:
            return "Cuide da sua dieta!"
        }
    }
}
