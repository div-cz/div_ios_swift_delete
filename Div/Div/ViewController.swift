//
//  ViewController.swift
//  Div
//
//  Created by Christián on 16/07/2024.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        setupLoginButton()
        setupRegisterButton()
        setupMailField()
        setupPasswordField()
    }
    
    


}

extension ViewController {
    
    func setupLoginButton() {
        let button = UIButton(type: .system)
        self.view.addSubview(button)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            // Pripojenie tlačidla k stredu zobrazenia
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 0),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 280),
            // Nastavenie šírky a výšky tlačidla
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    func setupRegisterButton() {
        let button = UIButton(type: .system)
        self.view.addSubview(button)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            // Pripojenie tlačidla k stredu zobrazenia
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 0),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 200),
            // Nastavenie šírky a výšky tlačidla
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    @objc func buttonTapped() {
            print("Tlačidlo bolo stlačené!")
        }
    
    func setupMailField() {
        let textField = UITextField()
        self.view.addSubview(textField)
        textField.placeholder = "Enter mail"
        textField.tintColor = UIColor.red
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 0),
            textField.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 20),
            textField.widthAnchor.constraint(equalToConstant: 350),
            textField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupPasswordField() {
        let textField = UITextField()
        self.view.addSubview(textField)
        textField.placeholder = "Enter password"
        textField.tintColor = UIColor.red
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 0),
            textField.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 80),
            textField.widthAnchor.constraint(equalToConstant: 350),
            textField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
