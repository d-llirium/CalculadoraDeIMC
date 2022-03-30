//
//  IMCModel.swift
//  Calculadora de IMC
//
//  Created by user on 17/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

class CalculatorIMC {
    
    private var height: Double
    private var weight: Double
    private var result: Double {
        weight/(height * height)
    }
    let convertion: Convertion
    
    init() {
        self.height = 1.4
        self.weight = 200
        self.convertion = Convertion()
    }
    
    func getHeight()
    -> Double {
        return self.height
    }
    func setHeight(
        _ newValue: Float
    ) {
        self.height = convertion
            .convertToDouble(
                newValue,
                10
            )
    }
    
    func getWeight()
    -> Double {
        return self.weight
    }
    func setWeight(
        _ newValue: Float
    ) {
        self.weight = convertion
            .convertToDouble(
                newValue,
                100
            )
    }
    
    func getResult()
    -> Double {
        let rounded = Double(
            round( 10 * self.result ) / 10
        )
        return rounded
    }
}
