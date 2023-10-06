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

    lazy var logAppImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO menor")
        image.contentMode = .scaleAspectFit

        return image
    }()

    lazy var sentenceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 31)
        label.text = "Abasteça com:"
        return label
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
        addSubview(logAppImage)
        addSubview(backButton)
        addSubview(sentenceLabel)

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

            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

            logAppImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60 ),
            logAppImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logAppImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

            sentenceLabel.topAnchor.constraint(equalTo: logAppImage.bottomAnchor, constant: 180),
            sentenceLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        ])
    }
}
