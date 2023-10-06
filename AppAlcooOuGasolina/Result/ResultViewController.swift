//
//  ResultViewController.swift
//  AppAlcooOuGasolina
//
//  Created by DAVI PEREIRA DA SILVA on 06/10/23.
//

import UIKit

enum BestFuel: String {
    case gas = "Gasolina"
    case ethanol = "Álcool"
}

class ResultViewController: UIViewController {
    
    var screen: ResultScreen?
    let bestFuel: BestFuel

    init(bestFuel: BestFuel) {
        self.bestFuel = bestFuel

        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        screen = ResultScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        screen?.delete(delegate: self)
        screen?.resultLabel.text = bestFuel.rawValue
    }

    func popViewController() {
        navigationController?.popViewController(animated: true)
    }
}

extension ResultViewController: ResultScreenDelegate {
    func tappedBackButton() {
        popViewController()
    }
    
    func tappedCalculateButton() {
        popViewController()
    }
}
