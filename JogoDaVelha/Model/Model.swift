//
//  Model.swift
//  JogoDaVelha
//
//  Created by Yago Pereira on 28/02/22.
//

import UIKit


class Model:UIViewController {

    // MARK: - ATRIBUTOS
    var vencedor:Bool?
    var cont:Int = 0
    var matrizJogo:[[String]] = [["", "", ""], ["", "", ""], ["", "", ""]]
    var matrizReset:[[String]] = [["", "", ""], ["", "", ""], ["", "", ""]]

    lazy var labelGanhador: UILabel = {
        let label = UILabel()
        label.text = "Player 'X' Turn"
        label.font = UIFont (name: "Noteworthy-Bold", size: 45)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var stackViewLinha: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.spacing = 24.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var stackViewColuna3: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [button7, button8, button9])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var stackViewColuna2: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [button4, button5, button6])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()


   lazy var stackViewColuna: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [button, button2, button3])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var buttonPlayAgain: UIButton = {
        let button = UIButton ()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 50)
        button.setTitle("Restart", for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(playAgain), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button: UIButton = {
        let button = UIButton()
        button.tag = 00
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button2: UIButton = {
        let button = UIButton()
        button.tag = 01
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button3: UIButton = {
        let button = UIButton()
        button.tag = 02
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button4: UIButton = {
        let button = UIButton()
        button.tag = 10
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button5: UIButton = {
        let button = UIButton()
        button.tag = 11
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button6: UIButton = {
        let button = UIButton()
        button.tag = 12
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button7: UIButton = {
        let button = UIButton()
        button.tag = 20
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button8: UIButton = {
        let button = UIButton()
        button.tag = 21
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button9: UIButton = {
        let button = UIButton()
        button.tag = 22
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    var allButtons: [UIButton] {
        [button, button2, button3, button4, button5, button6, button7, button8, button9]
    }


    // MARK: - FUNCTIONS

    @objc func jogada(_ sender: UIButton) {
        if  cont % 2 == 0 {
            sender.setTitle("X", for: .normal)
            sender.isEnabled = false

        } else {
            sender.setTitle("O", for: .normal)
            sender.isEnabled = false

        }
        switch sender.tag {
            case 00: matrizJogo[0][0] = cont % 2 == 0 ? "X" : "O"
            case 01: matrizJogo[0][1] = cont % 2 == 0 ? "X" : "O"
            case 02: matrizJogo[0][2] = cont % 2 == 0 ? "X" : "O"
            case 10: matrizJogo[1][0] = cont % 2 == 0 ? "X" : "O"
            case 11: matrizJogo[1][1] = cont % 2 == 0 ? "X" : "O"
            case 12: matrizJogo[1][2] = cont % 2 == 0 ? "X" : "O"
            case 20: matrizJogo[2][0] = cont % 2 == 0 ? "X" : "O"
            case 21: matrizJogo[2][1] = cont % 2 == 0 ? "X" : "O"
            case 22: matrizJogo[2][2] = cont % 2 == 0 ? "X" : "O"

        default:
            break
        }

        cont += 1
        vencedor = cont > 4 ? winTie() : false
        labelGanhador.text = (cont % 2 == 1) && vencedor == false ? "Player 'O' Turn": "Player 'X' Turn"
        if (vencedor == true || cont == 9) {
            endGame()
        }
        print (vencedor!)
        print (matrizJogo)
        print (cont)
    }

    func endGame () {
        labelGanhador.text = (cont % 2 == 0) ? "Player 'O' Wins": "Player 'X' Wins"

        if cont == 9 && vencedor == false {
            labelGanhador.text = "Tie Game"
        }
        labelGanhador.isHidden = false
        allButtons.forEach { button in
            button.isEnabled = false
        }
        buttonPlayAgain.setTitle("Play Again", for: .normal)
    }

    @objc func playAgain() {
        allButtons.forEach { button in
            button.isEnabled = true
            button.setTitle("", for: .normal)
        }
        labelGanhador.text = "Player 'X' Turn"
        matrizJogo = matrizReset
        cont = 0
        buttonPlayAgain.setTitle("Restart", for: .normal)
    }

    func winTie() -> Bool{

        for i in 0...2 {
            if (matrizJogo[i][0] == matrizJogo[i][1]) && (matrizJogo[i][0] == matrizJogo[i][2]) && (matrizJogo[i][0] != "") {
                return true
            }
        }
        for i in 0...2 {
            if (matrizJogo[0][i] == matrizJogo[1][i]) && (matrizJogo[0][i] == matrizJogo[2][i]) && (matrizJogo[0][i] != "") {
                return true
            }
        }
        if (matrizJogo[0][0] == matrizJogo[1][1]) && (matrizJogo[0][0] == matrizJogo[2][2]) && (matrizJogo[0][0] != "")  {
            return true
        }
        if (matrizJogo[0][2] == matrizJogo[1][1]) && (matrizJogo[0][2] == matrizJogo[2][0]) && (matrizJogo[0][2] != "")  {
            return true
        }
        return false
    }

    func addSubViewsModel () {
        stackViewLinha.addArrangedSubview(stackViewColuna)
        stackViewLinha.addArrangedSubview(stackViewColuna2)
        stackViewLinha.addArrangedSubview(stackViewColuna3)
        configureConstraintsButton()
    }

    func configureConstraintsButton() {
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 100),
            button2.heightAnchor.constraint(equalToConstant: 100),
            button3.heightAnchor.constraint(equalToConstant: 100),
            button4.heightAnchor.constraint(equalToConstant: 100),
            button5.heightAnchor.constraint(equalToConstant: 100),
            button6.heightAnchor.constraint(equalToConstant: 100),
            button7.heightAnchor.constraint(equalToConstant: 100),
            button8.heightAnchor.constraint(equalToConstant: 100),
            button9.heightAnchor.constraint(equalToConstant: 100),
    //            charactersButton.heightAnchor.constraint(equalToConstant: 52.0),
    //            locationsButton.heightAnchor.constraint(equalToConstant: 52.0),
        ])
    }
}
