//
//  ViewController.swift
//  JogoDaVelha
//
//  Created by Yago Pereira on 28/02/22.
//


import UIKit

class HomeViewController: UIViewController {

    var model: Model = Model()


    lazy var stackViewLinha: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.spacing = 24.0
       
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        configureConstraints()
        view.backgroundColor = .white
        self.title = "Jogo da Velha"
    }

    func addSubviews() {
        view.addSubview(stackViewLinha)
        stackViewLinha.addArrangedSubview(model.stackViewColuna)
        stackViewLinha.addArrangedSubview(model.stackViewColuna2)
        stackViewLinha.addArrangedSubview(model.stackViewColuna3)
        stackViewLinha.addArrangedSubview(model.labelGanhador)
    }
//        model.addSubViewsModel()

    func configureConstraints() {
        NSLayoutConstraint.activate([
            
            stackViewLinha.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            stackViewLinha.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24.0),
            stackViewLinha.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24.0),
//            charactersButton.heightAnchor.constraint(equalToConstant: 52.0),
//            locationsButton.heightAnchor.constraint(equalToConstant: 52.0),
        ])
    }
}


