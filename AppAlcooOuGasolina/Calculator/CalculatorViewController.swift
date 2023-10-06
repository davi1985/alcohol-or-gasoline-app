//
//  CalculatorViewController.swift
//  AppAlcooOuGasolina
//
//  Created by DAVI PEREIRA DA SILVA on 01/10/23.
//

import UIKit

class CalculatorViewController: UIViewController {

    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

extension CalculatorViewController: CalculatorScreenDelegate {
    func tappedCalculateButton() {
        print(#function)
    }
    
    func tappedBackButton() {
        print(#function)
    }
}
