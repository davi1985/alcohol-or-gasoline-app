//
//  CalculatorViewController.swift
//  AppAlcooOuGasolina
//
//  Created by DAVI PEREIRA DA SILVA on 01/10/23.
//

import UIKit

class CalculatorViewController: UIViewController {

    var screen: CalculatorScreen?
    var alert:Alert?
    
    override func loadView() {
        screen = CalculatorScreen()
        
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self)
        screen?.delegate(delegate: self)
    }
    
    func validateTextFields() -> Bool {
        guard let ethanolPrice = screen?.ethanolPriceTextField.text else { return false }
        guard let gasPrice = screen?.gaslPriceTextField.text else { return false }
        
        if ethanolPrice.isEmpty && gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "Informe os valores do álcool e da gasolina")
            
            return false
        } else if ethanolPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "Informe o valor do álcool")
            
            return false
        } else if gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "Informe o valor da gasolina")
            
            return false
        }

        return true
    }
}

extension CalculatorViewController: CalculatorScreenDelegate {
    func tappedCalculateButton() {
        let viewController = ResultViewController()
        navigationController?.pushViewController(viewController, animated: true)
//        if validateTextFields() {
//            let formatter = NumberFormatter()
//            formatter.numberStyle = .decimal
//            
//            let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
//            let gasPrice: Double = (formatter.number(from: screen?.gaslPriceTextField.text ?? "0.0") as? Double) ?? 0.0
//            
//            let viewController = ResultViewController()
//
//            if ethanolPrice / gasPrice > 0.7 {
//
//            } else {
//                print("Melhor utilizar Álcool")
//            }
//
//            navigationController?.pushViewController(viewController, animated: true)
//        }
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
}
