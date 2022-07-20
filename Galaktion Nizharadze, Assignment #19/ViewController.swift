//
//  ViewController.swift
//  Galaktion Nizharadze, Assignment #19
//
//  Created by Gaga Nizharadze on 21.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let topLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS App Templates"
        label.font = .systemFont(ofSize: 30)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var rocketBackgorundCircleView: UIView = {
        let circleView = UIView()
        circleView.translatesAutoresizingMaskIntoConstraints = false
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 240, height: 240)
        gradientLayer.colors = [UIColor.systemIndigo.cgColor,
                                UIColor.systemPurple.cgColor]
        
        gradientLayer.cornerRadius = 120
        
        circleView.layer.addSublayer(gradientLayer)
        circleView.backgroundColor = .purple
        circleView.layer.cornerRadius = 120
        circleView.layer.borderWidth = 4
        circleView.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        return circleView
    }()
    
    private let rocketEmoji: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🚀"
        label.font = .systemFont(ofSize: 100)
      
        return label
    }()
    
    
    
    private let textFieldsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        return stackView
    }()
    
    private var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.layer.cornerRadius = 18
        textField.setLeftPaddingPoints(17)
        textField.backgroundColor = .systemGray6
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    
    private var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.setLeftPaddingPoints(17)
        textField.layer.cornerRadius = 18
        textField.backgroundColor = .systemGray6
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    
    lazy var signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign in", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(named: "darkGreen")
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    
    lazy var bottomLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dont have an account? Sign Up"
        label.textColor = .black
        label.font = .systemFont(ofSize: 17)
        
        return label
    }()
    
    
    
    private func changeBackgroundWithGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPurple.cgColor,
                                UIColor.systemBlue.cgColor]
        
        view.layer.addSublayer(gradientLayer)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBackgroundWithGradient()
        configureUIComponents()
    }

    private func giveShadow(element: UIView) {
        
        element.layer.shadowColor = UIColor.black.cgColor
        element.layer.shadowRadius = 5.0
        element.layer.shadowOpacity = 0.7
        element.layer.shadowOffset = CGSize(width: 4, height: 4)
        element.layer.masksToBounds = false
    }
    
    private func configureStackView() {
        textFieldsStackView.addArrangedSubview(emailTextField)
        textFieldsStackView.addArrangedSubview(passwordTextField)
    }
    
    private func setShadowToUIElements() {
        giveShadow(element: emailTextField)
        giveShadow(element: passwordTextField)
        giveShadow(element: signInButton)
        giveShadow(element: topLabel)
    }
    
    private func configureUIComponents() {
        
        self.view.addSubview(topLabel)
        self.view.addSubview(rocketBackgorundCircleView)
        rocketBackgorundCircleView.addSubview(rocketEmoji)
        configureStackView()
        self.view.addSubview(textFieldsStackView)
        self.view.addSubview(signInButton)
        self.view.addSubview(bottomLabel)
        
        setShadowToUIElements()
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            rocketBackgorundCircleView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 70),
            rocketBackgorundCircleView.widthAnchor.constraint(equalToConstant: 240),
            rocketBackgorundCircleView.heightAnchor.constraint(equalToConstant: 240),
            rocketBackgorundCircleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            rocketEmoji.centerXAnchor.constraint(equalTo: rocketBackgorundCircleView.centerXAnchor),
            rocketEmoji.centerYAnchor.constraint(equalTo: rocketBackgorundCircleView.centerYAnchor),
            rocketEmoji.heightAnchor.constraint(equalToConstant: 100),
            rocketEmoji.widthAnchor.constraint(equalToConstant: 100),
            
            textFieldsStackView.topAnchor.constraint(equalTo: rocketBackgorundCircleView.bottomAnchor, constant: 50),
            textFieldsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            textFieldsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            textFieldsStackView.heightAnchor.constraint(equalToConstant: 130),
            
            signInButton.topAnchor.constraint(equalTo: textFieldsStackView.bottomAnchor, constant: 100),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            
            bottomLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}





extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
