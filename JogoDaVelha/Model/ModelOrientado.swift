//
//  ModelOrientado.swift
//  JogoDaVelha
//
//  Created by Yago Pereira on 01/03/22.
//

import UIKit



class Button:UIViewController {

    var vencedor:Bool?
    var cont:Int = 0
    var matrizJogo:[[String]] = [["", "", ""], ["", "", ""], ["", "", ""]]



    lazy var button: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 80)
        button.setTitle("1", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(jogada), for: .touchUpInside)
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


    lazy var stackViewColuna: UIStackView = {
         let stackView = UIStackView(arrangedSubviews: [button, button2, button3])
         stackView.axis = .horizontal
         stackView.distribution = .fillEqually
         stackView.spacing = 15
         stackView.translatesAutoresizingMaskIntoConstraints = false
         return stackView
     }()

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
}
