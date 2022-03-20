//
//  IMCModel.swift
//  Calculadora de IMC
//
//  Created by user on 17/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

class IMC {
    var height: Double
    var weight: Double
    var result: Double {
        weight/(height * height)
    }
    init( height: Float, weight: Float ) {
        self.height = Double( height )
        self.weight = Double( weight )
    }
    
}
