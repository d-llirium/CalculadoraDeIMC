//
//  ViewController.swift
//  Calculadora de IMC
//
//  Created by Luan Câmara on 15/03/2022.
//  Copyright © 2019 Luan Câmara. All rights reserved.
//

import UIKit

class CalculationViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightValueChanged(
        _ sender: UISlider
    ) {
        let formatted = String(
            format: "%.2fm",
            heightSlider.value
        )
        heightLabel.text = formatted
    }
    @IBAction func weightValueChanged(
        _ sender: UISlider
    ) {
        let formatted = String(
            format: "%.1fkg",
            weightSlider.value
        )
        weightLabel.text = formatted
    }
    @IBAction func goToResult(
        _ sender: UIButton
    ) {
        
    }
    
}

