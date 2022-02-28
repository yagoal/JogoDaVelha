//
//  ViewController.swift
//  JogoDaVelha
//
//  Created by Yago Pereira on 28/02/22.
//


import UIKit

class HomeViewController: UIViewController {

    var model: Model = Model()


    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        configureConstraints()
        view.backgroundColor = .white
        self.title = "Jogo da Velha"
    }

    func addSubviews() {
        view.addSubview(model.stackViewLinha)
        model.addSubViewsModel()

    }
    func configureConstraints() {
        NSLayoutConstraint.activate([
            model.stackViewLinha.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            model.stackViewLinha.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24.0),
            model.stackViewLinha.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24.0),
//            charactersButton.heightAnchor.constraint(equalToConstant: 52.0),
//            locationsButton.heightAnchor.constraint(equalToConstant: 52.0),
        ])
    }
}

