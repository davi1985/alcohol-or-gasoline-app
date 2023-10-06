//
//  ResultViewController.swift
//  AppAlcooOuGasolina
//
//  Created by DAVI PEREIRA DA SILVA on 06/10/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var screen: ResultScreen?

    override func loadView() {
        screen = ResultScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
