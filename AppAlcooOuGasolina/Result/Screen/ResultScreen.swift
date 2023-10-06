//
//  ResultScreen.swift
//  AppAlcooOuGasolina
//
//  Created by DAVI PEREIRA DA SILVA on 06/10/23.
//

import UIKit

class ResultScreen: UIView {

    lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG BLUR")
        image.contentMode = .scaleAspectFit

        return image
    }()

    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Botão Back"), for: .normal)
        //button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)

        return button
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(backgroundImage)
        addSubview(backButton)

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

//            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
//            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//
//            logAppImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 150 ),
//            logAppImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            logAppImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//
//            ethanolPriceTextField.topAnchor.constraint(equalTo: logAppImage.bottomAnchor, constant: 134),
//            ethanolPriceTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            ethanolPriceTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            ethanolPriceTextField.heightAnchor.constraint(equalToConstant: 45),
//
//            gaslPriceTextField.topAnchor.constraint(equalTo: ethanolPriceTextField.bottomAnchor, constant: 16),
//            gaslPriceTextField.leadingAnchor.constraint(equalTo: ethanolPriceTextField.leadingAnchor),
//            gaslPriceTextField.trailingAnchor.constraint(equalTo: ethanolPriceTextField.trailingAnchor),
//            gaslPriceTextField.heightAnchor.constraint(equalTo: ethanolPriceTextField.heightAnchor),
//
//            calculateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -135),
//            calculateButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
//            calculateButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
//            calculateButton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
}
