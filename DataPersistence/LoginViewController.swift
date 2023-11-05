//
//  LoginViewController.swift
//  DataPersistence
//
//  Created by user on 11/6/23.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Properties

    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 32
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 56, left: 16, bottom: 0, right: 16)
        return stackView
    }()

    private let logo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "TBC")
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        return imageView
    }()

    private let welcomeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private let accountStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "TBC x Academy"
        label.textColor = UIColor(red: 0, green: 165/255, blue: 231/255, alpha: 1)
        label.font = .systemFont(ofSize: 26, weight: .bold)
        return label
    }()

    private let smallWelcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "We’re excited to see you!"
        label.font = .systemFont(ofSize: 13)
        label.textColor = UIColor(red: 80/255, green: 85/255, blue: 95/255, alpha: 1)
        return label
    }()

    private let accountInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Account Information"
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textColor = UIColor(red: 80/255, green: 85/255, blue: 95/255, alpha: 1)
        return label
    }()

    private let usernameTextField: PaddedTextField = {
        let textField = PaddedTextField()
        textField.placeholder = "Username"
        textField.textColor = UIColor(red: 118/255, green: 126/255, blue: 139/255, alpha: 1)
        textField.backgroundColor = UIColor(red: 227/255, green: 229/255, blue: 232/255, alpha: 1)
        textField.heightAnchor.constraint(equalToConstant: 46).isActive = true
        textField.layer.cornerRadius = 4
        return textField
    }()

    private let passwordTextField: PaddedTextField = {
        let textField = PaddedTextField()
        textField.placeholder = "Password"
        textField.textColor = UIColor(red: 118/255, green: 126/255, blue: 139/255, alpha: 1)
        textField.backgroundColor = UIColor(red: 227/255, green: 229/255, blue: 232/255, alpha: 1)
        textField.heightAnchor.constraint(equalToConstant: 46).isActive = true
        textField.layer.cornerRadius = 4
        return textField
    }()

    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(red: 90/255, green: 100/255, blue: 234/255, alpha: 1)
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.layer.cornerRadius = 4
        button.titleLabel?.font = .systemFont(ofSize: 13, weight: .bold)
        return button
    }()

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    // MARK: - View Setup

    func setUpView() {
        setUpSelfView()
        setUpMainStackView()
    }

    func setUpSelfView() {
        view.backgroundColor = .white
        view.addSubview(mainStackView)
    }

    func setUpMainStackView() {
        setUpMainStackViewHierarchy()
        setUpMainStackViewConstraints()
    }

    func setUpMainStackViewHierarchy() {
        mainStackView.addArrangedSubview(welcomeStackView)
        mainStackView.addArrangedSubview(accountStackView)
    }

    func setUpMainStackViewConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 0),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
