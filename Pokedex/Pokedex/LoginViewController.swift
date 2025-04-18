//
//  LoginViewController.swift
//  Pokedex
//
//  Created by Lucas Nunez on 18/04/2025.
//

import UIKit

class LoginViewController: UIViewController {
    private var backgroundColorView: UIView!
    private var imageBackgroundView: UIView!
    private var emailTextField: UITextField!
    private var passwordTextField: UITextField!
    private var loginButton: UIButton!
    private var logoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpBackgroundColorView()
        setUpimageBackgroundView()
        setUpLogo()
        setUpEmailTextField()
        setUpPasswordTextField()
        setUpLoginButton()
    }
}

private extension LoginViewController {
    func setUpBackgroundColorView() {
        backgroundColorView = UIView()
        backgroundColorView.translatesAutoresizingMaskIntoConstraints = false
        backgroundColorView.backgroundColor = .red
        view.addSubview(backgroundColorView)
        backgroundColorView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundColorView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundColorView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundColorView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
    }

    func setUpimageBackgroundView() {
        imageBackgroundView = UIImageView(image: UIImage(named: "pokeballs_background"))
        imageBackgroundView.contentMode = .scaleAspectFill
        imageBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageBackgroundView)
        
        NSLayoutConstraint.activate([
            imageBackgroundView.topAnchor.constraint(equalTo: backgroundColorView.bottomAnchor),
            imageBackgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageBackgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageBackgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    func setUpLogo() {
        logoImageView = UIImageView(image: UIImage(named: "login_logo"))
        logoImageView.backgroundColor = .clear
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoImageView)
        logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -85).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
    }

    func setUpEmailTextField() {
        emailTextField = UITextField()
        emailTextField.placeholder = "Email"
        emailTextField.textColor = .white
        emailTextField.backgroundColor = .red
        emailTextField.layer.cornerRadius = 22
        emailTextField.layer.borderWidth = 4
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.clipsToBounds = true
        emailTextField.autocapitalizationType = .none
        emailTextField.returnKeyType = .next
        emailTextField.keyboardType = .emailAddress
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 44))
        emailTextField.leftViewMode = .always
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailTextField)
        emailTextField.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 520).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }

    func setUpPasswordTextField() {
        passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.textColor = .white
        passwordTextField.backgroundColor = .red
        passwordTextField.layer.cornerRadius = 22
        passwordTextField.layer.borderWidth = 4
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.clipsToBounds = true
        passwordTextField.isSecureTextEntry = true
        passwordTextField.returnKeyType = .done
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 44))
        passwordTextField.leftViewMode = .always
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }

    func setUpLoginButton() {
        var config = UIButton.Configuration.filled()
        config.title = "Log in"
        config.baseBackgroundColor = .red
        config.baseForegroundColor = .white
        config.cornerStyle = .medium
        config.contentInsets = NSDirectionalEdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 24)
        config.background.strokeColor = .white
        config.background.strokeWidth = 4

        loginButton = UIButton(configuration: config)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        view.addSubview(loginButton)

        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 32),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }


    @objc func loginTapped() {
        
    }
}

