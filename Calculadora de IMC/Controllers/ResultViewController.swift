//
//  ResultViewController.swift
//  Calculadora de IMC
//
//  Created by user on 17/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var imc: CalculatorIMC?
    
    @IBAction func goBack(
        _ sender: UIButton
    ) {
        performSegue(
            withIdentifier: "unwind",
            sender: self
        )
    }
}

//MARK: - View Life Cycle
extension ResultViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let imc = self.imc else {
            return
        }
        resultLabel.text = "\( imc.getResult() )"
        
        let validation = Validation()
        messageLabel.text = validation.showMessage(
            for: imc.getResult()
        )
    }
}
