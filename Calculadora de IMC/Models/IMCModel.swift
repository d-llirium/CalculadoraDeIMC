//
//  IMCModel.swift
//  Calculadora de IMC
//
//  Created by user on 17/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

class IMC {
    var height: Double = 1.5
    var weight: Double = 100
    var result: Double {
        weight/(height * height)
    }
}
