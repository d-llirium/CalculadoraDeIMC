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
    
    var imc = CalculatorIMC()
}

//MARK: - View Life Cycle
extension CalculationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - SLIDER ACTIONS
extension CalculationViewController {
    
    @IBAction func heightValueChanged(
        _ sender: UISlider
    ) {
        imc.setHeight( heightSlider.value )
        heightLabel.text = "\( imc.getHeight() )m"
    }
    @IBAction func weightValueChanged(
        _ sender: UISlider
    ) {
        imc.setWeight( weightSlider.value )
        weightLabel.text = "\( imc.getWeight() )kg"
    }
}

//MARK: - NAVIGATION
extension CalculationViewController {
    
    @IBAction func goToResult(
        _ sender: UIButton
    ) { }
    
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        if let resultVC = segue
            .destination as? ResultViewController {
            resultVC.imc = self.imc
            resultVC.modalPresentationStyle = .fullScreen
        }
    }
    
    @IBAction func unwind(
        _ seg: UIStoryboardSegue
    ) {
        heightSlider.value = 1.5
        weightSlider.value = 100
        heightValueChanged( heightSlider )
        weightValueChanged( weightSlider )
    }
}
