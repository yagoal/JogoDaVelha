//
//  Model.swift
//  JogoDaVelha
//
//  Created by Yago Pereira on 28/02/22.
//

import UIKit



class Model:UIViewController {
    var vencedor:Bool?
    var cont:Int = 0
    var matrizJogo:[[String]] = [["", "", ""], ["", "", ""], ["", "", ""]]

    func ganhou () -> Bool{
        for i in 0..<2 {
            if (matrizJogo[i][0] == matrizJogo[i][1]) && (matrizJogo[i][0] == matrizJogo[i][2]) {
              return true
            }
          }
          for i in 0..<2 {
            if (matrizJogo[0][i] == matrizJogo[1][i]) && (matrizJogo[0][i] == matrizJogo[2][i]) {
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

    lazy var labelGanhador: UILabel = {
        let label = UILabel()

        return label
    }()

    func addSubViewsModel () {
        stackViewLinha.addArrangedSubview(stackViewColuna)
        stackViewLinha.addArrangedSubview(stackViewColuna2)
        stackViewLinha.addArrangedSubview(stackViewColuna3)
        configureConstraintsButton()
    }


    @objc func jogada() {
        if  cont % 2 == 0 {
            button.setTitle("X", for: .normal)
            button.isEnabled = false
            matrizJogo[0][0] = "X"
            cont += 1

        } else {
            button.setTitle("O", for: .normal)
            button.isEnabled = false
            matrizJogo[0][0] = "O"
            cont += 1
        }

        vencedor = cont > 4 ? ganhou() : false

        print (vencedor!)
        print (matrizJogo)
        print (cont)
    }

    @objc func jogada2() {
        if cont % 2 == 0 {
            button2.setTitle("X", for: .normal)
            button2.isEnabled = false
            matrizJogo[0][1] = "X"
            cont += 1

        } else {
            button2.setTitle("O", for: .normal)
            button2.isEnabled = false
            matrizJogo[0][1] = "O"
            cont += 1
        }

        vencedor = cont > 4 ? ganhou(): false
        print(vencedor!)
        print (matrizJogo)
        print (cont)
    }

    @objc func jogada3() {
        if cont % 2 == 0 {
            button3.setTitle("X", for: .normal)
            button3.isEnabled = false
            matrizJogo[0][2] = "X"
            cont += 1

        } else {
            button3.setTitle("O", for: .normal)
            button3.isEnabled = false
            matrizJogo[0][2] = "O"
            cont += 1
        }
        vencedor = cont > 4 ? ganhou(): false
        print(vencedor!)
        print (matrizJogo)
        print (cont)
    }

    @objc func jogada4() {
        if cont % 2 == 0 {
            button4.setTitle("X", for: .normal)
            button4.isEnabled = false
            matrizJogo[1][0] = "X"
            cont += 1

        } else {
            button4.setTitle("O", for: .normal)
            button4.isEnabled = false
            matrizJogo[1][0] = "O"
            cont += 1
        }
        vencedor = cont > 4 ? ganhou(): false
        print(vencedor!)
        print (matrizJogo)
        print (cont)
    }

    @objc func jogada5() {
        if cont % 2 == 0 {
            button5.setTitle("X", for: .normal)
            button5.isEnabled = false
            matrizJogo[1][1] = "X"
            cont += 1

        } else {
            button5.setTitle("O", for: .normal)
            button5.isEnabled = false
            matrizJogo[1][1] = "O"
            cont += 1
        }
        vencedor = cont > 4 ? ganhou(): false
        print(vencedor!)
        print (matrizJogo)
        print (cont)
    }

    @objc func jogada6() {
        if cont % 2 == 0 {
            button6.setTitle("X", for: .normal)
            button6.isEnabled = false
            matrizJogo[1][2] = "X"
            cont += 1

        } else {
            button6.setTitle("O", for: .normal)
            button6.isEnabled = false
            matrizJogo[1][2] = "O"
            cont += 1
        }
        vencedor = cont > 4 ? ganhou(): false
        print(vencedor!)
        print (matrizJogo)
        print (cont)
    }

    @objc func jogada7() {
        if cont % 2 == 0 {
            button7.setTitle("X", for: .normal)
            button7.isEnabled = false
            matrizJogo[2][0] = "X"
            cont += 1

        } else {
            button7.setTitle("O", for: .normal)
            button7.isEnabled = false
            matrizJogo[2][0] = "O"
            cont += 1
        }
        vencedor = cont > 4 ? ganhou(): false
        print(vencedor!)
        print (matrizJogo)
        print (cont)
    }

    @objc func jogada8() {
        if cont % 2 == 0 {
            button8.setTitle("X", for: .normal)
            button8.isEnabled = false
            matrizJogo[2][1] = "X"
            cont += 1

        } else {
            button8.setTitle("O", for: .normal)
            button8.isEnabled = false
            matrizJogo[2][1] = "O"
            cont += 1
        }
        vencedor = cont > 4 ? ganhou(): false
        print(vencedor!)
        print (matrizJogo)
        print (cont)
    }

    @objc func jogada9() {
        if cont % 2 == 0 {
            button9.setTitle("X", for: .normal)
            button9.isEnabled = false
            matrizJogo[2][2] = "X"
            cont += 1

        } else {
            button9.setTitle("O", for: .normal)
            button9.isEnabled = false
            matrizJogo[2][2] = "O"
            cont += 1
        }
        vencedor = cont > 4 ? ganhou(): false
        print(vencedor!)
        print (matrizJogo)
        print (cont)
    }


    lazy var button: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("1", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
    //        button.addTarget(self, action: #selector(jogada(button)), for: .touchUpInside)

        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button2: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("2", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(jogada2), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button3: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("3", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada3), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button4: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("4", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada4), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button5: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("5", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(jogada5), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button6: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("6", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada6), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button7: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("7", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada7), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button8: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("8", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada8), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var button9: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("9", for: .normal)
        button.backgroundColor = .systemBlue

        button.addTarget(self, action: #selector(jogada9), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    func configureConstraintsButton() {
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 111),
            button2.heightAnchor.constraint(equalToConstant: 110),
            button3.heightAnchor.constraint(equalToConstant: 110),
            button4.heightAnchor.constraint(equalToConstant: 110),
            button5.heightAnchor.constraint(equalToConstant: 110),
            button6.heightAnchor.constraint(equalToConstant: 110),
            button7.heightAnchor.constraint(equalToConstant: 110),
            button8.heightAnchor.constraint(equalToConstant: 110),
            button9.heightAnchor.constraint(equalToConstant: 110),
    //            charactersButton.heightAnchor.constraint(equalToConstant: 52.0),
    //            locationsButton.heightAnchor.constraint(equalToConstant: 52.0),
        ])
    }
}
