//
//  IMCModel.swift
//  Calculadora de IMC
//
//  Created by user on 17/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct IMC {
    var height: Double
    var weight: Double
    var result: Double {
        return weight/(height * height)
    }
}
