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
    
    var imc: IMC?
    
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
        let result = Double(
            round(
                10 * imc.result
            ) / 10
        )
        resultLabel.text = "\( result )"
        
        switch result {
        case 16...16.9:
            messageLabel.text = "Procure um medico"
        case 16.9...18.5:
            messageLabel.text = "Coma mais!"
        case 18.6...24.9:
            messageLabel.text = "Continue assim!"
        default:
            messageLabel.text = "Cuide da sua dieta!"
        }
        // Do any additional setup after loading the view.
    }
}
