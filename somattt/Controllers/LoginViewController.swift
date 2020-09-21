//
//  LoginViewController.swift
//  somattt
//
//  Created by Klaus Chin on 2020/9/21.
//  Copyright © 2020 WPG. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    private let stackView:UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 30
        return stackView
    }()
    
    private let userNameTextField:UITextField = {
        let txtField = UITextField()
        txtField.backgroundColor = .white
        txtField.placeholder = "Username"
        txtField.borderStyle = .roundedRect
        return txtField
    }()
    
    private let passwordTextField:UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "Password"
        txtField.borderStyle = .roundedRect
        return txtField
    }()
    
    let loginButton:UIButton = {
        let btn = UIButton(type:.system)
        btn.backgroundColor = .blue
        btn.setTitle("Login", for: .normal)
        btn.tintColor = .white
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
       
       
    }
    
    
    private func setupUI() {
            self.view.backgroundColor = .white
            stackView.addArrangedSubview(userNameTextField)
            stackView.addArrangedSubview(passwordTextField)
            stackView.addArrangedSubview(loginButton)
            view.addSubview(stackView)
            stackView.frame = CGRect(x: 20, y: 100, width: self.view.frame.width - 40, height: 140)
        }
    }

