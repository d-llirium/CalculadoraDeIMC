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
    
    @IBAction func calculateAndGoToResult(_ sender: UIButton) {
    }
    
}

