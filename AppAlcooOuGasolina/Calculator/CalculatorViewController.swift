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
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
        let gasPrice: Double = (formatter.number(from: screen?.gaslPriceTextField.text ?? "0.0") as? Double) ?? 0.0
        
        if ethanolPrice / gasPrice > 0.7 {
            print("Melhor utilizar Gasolina")
        } else {
            print("Melhor utilizar Álcool")
        }
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
}
