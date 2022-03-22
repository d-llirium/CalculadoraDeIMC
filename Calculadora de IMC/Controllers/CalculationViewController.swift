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
    
    var imc: IMC!
    
}

//MARK: - View Life Cycle
extension CalculationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imc = IMC(
            height: heightSlider.value,
            weight: weightSlider.value
        )
    }
}

//MARK: - SLIDER ACTIONS
extension CalculationViewController {
    
    @IBAction func heightValueChanged(
        _ sender: UISlider
    ) {
        imc.height = Double(
            heightSlider.value
        )
        let height = Double(
            round(
                100 * imc.height
            ) / 100
        )
        heightLabel.text = "\(height)m"

    }
    @IBAction func weightValueChanged(
        _ sender: UISlider
    ) {
        imc.weight = Double(
            weightSlider.value
        )
        let weight = Double(
            round(
                10 * imc.weight
            ) / 10
        )
        weightLabel.text = "\(weight)kg"
    }
}

//MARK: - Data Handling with prepare for segue
extension CalculationViewController {
    
    @IBAction func goToResult(
        _ sender: UIButton
    ) {
        performSegue(
            withIdentifier: "showResult",
            sender: self
        )
    }
    
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        if let resultVC = segue.destination as? ResultViewController {
            resultVC.imc = self.imc
        }
    }
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        heightSlider.value = 1.5
        self.heightValueChanged( heightSlider )
        weightSlider.value = 100
        self.weightValueChanged( weightSlider )
    }
}
