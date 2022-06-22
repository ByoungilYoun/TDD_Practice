//
//  ViewController.swift
//  AccountCenterForUITest
//
//  Created by 윤병일 on 2022/06/22.
//

import UIKit

class ViewController: UIViewController {

  //MARK: - Properties
  private let label : UILabel = {
    let label = UILabel()
    label.textAlignment = .center
    label.text = "Log In"
    label.font = .systemFont(ofSize: 22, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let username : UITextField = {
    let field = UITextField()
    field.placeholder = "Username"
    field.translatesAutoresizingMaskIntoConstraints = false
    field.autocapitalizationType = .none
    field.autocorrectionType = .no
    field.backgroundColor = .secondarySystemBackground
    field.layer.cornerRadius = 8
    field.layer.borderWidth = 0.5
    field.layer.borderColor = UIColor.label.cgColor
    field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
    field.leftViewMode = .always
    return field
  }()
  
  private let password : UITextField = {
    let field = UITextField()
    field.placeholder = "Password"
    field.isSecureTextEntry = true
    field.backgroundColor = .secondarySystemBackground
    field.translatesAutoresizingMaskIntoConstraints = false
    field.layer.cornerRadius = 8
    field.autocapitalizationType = .none
    field.autocorrectionType = .no
    field.layer.borderWidth = 0.5
    field.layer.borderColor = UIColor.label.cgColor
    field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
    field.leftViewMode = .always
    return field
  }()
  
  private let button : UIButton = {
    let button = UIButton()
    button.setTitle("Continue", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .systemBlue
    button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 8
    return button
  }()
  
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    [label, username, password, button].forEach {
      view.addSubview($0)
    }
    addConstraints()
    button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
  }
  
  //MARK: - Functions
  private func addConstraints() {
    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
      label.widthAnchor.constraint(equalToConstant: 300),
      label.heightAnchor.constraint(equalToConstant: 50),
      
      username.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50),
      username.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      username.widthAnchor.constraint(equalToConstant: 300),
      username.heightAnchor.constraint(equalToConstant: 50),
      
      password.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 20),
      password.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      password.widthAnchor.constraint(equalToConstant: 300),
      password.heightAnchor.constraint(equalToConstant: 50),
      
      button.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 50),
      button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      button.widthAnchor.constraint(equalToConstant: 200),
      button.heightAnchor.constraint(equalToConstant: 40)
    ])
  }

  //MARK: - @objc func
  @objc private func didTapButton() {
    guard let name = username.text, let password = password.text else {
      return
    }
    
    if name == "jimmy" && password == "1234" {
      let accountVC = AccountVC()
      accountVC.modalPresentationStyle = .fullScreen
      present(accountVC, animated: true)
    } else {
      
    }
  }
}


final class AccountVC : UIViewController {
  
  private let label : UILabel = {
    let label = UILabel()
    label.textAlignment = .center
    label.text = "Welcome, Youn!"
    label.numberOfLines = 0
    label.font = .systemFont(ofSize: 32, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemGreen
    
    view.addSubview(label)
    
    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      label.widthAnchor.constraint(equalToConstant: 300),
      label.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
}
