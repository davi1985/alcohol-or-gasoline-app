//
//  CalculatorScreen.swift
//  AppAlcooOuGasolina
//
//  Created by DAVI PEREIRA DA SILVA on 01/10/23.
//

import UIKit

class CalculatorScreen: UIView {
    
    lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG BLUR DARK")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var logAppImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO menor")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var ethanolPriceTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.textColor = .darkGray
        textField.placeholder = "Preço do álcool"
        
        return textField
    }()
    
    lazy var gaslPriceTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.textColor = .darkGray
        textField.placeholder = "Preço da gasolina"
        
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        addSubview(logAppImage)
        addSubview(ethanolPriceTextField)
        addSubview(gaslPriceTextField)
        
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configContraints() {
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logAppImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60 ),
            logAppImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logAppImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            ethanolPriceTextField.topAnchor.constraint(equalTo: logAppImage.bottomAnchor, constant: 200),
            ethanolPriceTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            ethanolPriceTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            ethanolPriceTextField.heightAnchor.constraint(equalToConstant: 45),
            
            gaslPriceTextField.topAnchor.constraint(equalTo: ethanolPriceTextField.bottomAnchor, constant: 16),
            gaslPriceTextField.leadingAnchor.constraint(equalTo: ethanolPriceTextField.leadingAnchor),
            gaslPriceTextField.trailingAnchor.constraint(equalTo: ethanolPriceTextField.trailingAnchor),
            gaslPriceTextField.heightAnchor.constraint(equalTo: ethanolPriceTextField.heightAnchor),
        ])
    }
}
