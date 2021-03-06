//
//  MainView.swift
//  AlansSegueAssignment
//
//  Created by Kevin Waring on 1/24/19.
//  Copyright © 2019 Kevin Waring. All rights reserved.
//

import UIKit


protocol MainViewDelegate: AnyObject {
    func buttonPressed(message: String)
}
class MainView: UIView {

    var textMessage = "Enter a Message"
    weak var delegate : MainViewDelegate?
    
    
    lazy var mainButton: UIButton = {
    let button = UIButton()
    button.setTitle("Enter", for: .normal)
    button.backgroundColor = .blue
    button.addTarget(self, action: #selector(buttonPressed) , for: .touchUpInside)
    return button
    }()
    
    lazy var textFeild: UITextField = {
        let textField = UITextField()
        textField.text = textMessage
        //textField.text = "Enter text here"
        textField.isEnabled = true
        textField.textAlignment = .center
        textField.delegate = self
        return textField
    }()
    
    @objc func buttonPressed() {
    delegate?.buttonPressed(message: textMessage)
    }
    
    override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    addSubview(mainButton)
    addSubview(textFeild)
    setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
    mainButton.translatesAutoresizingMaskIntoConstraints = false
    mainButton.topAnchor.constraint(equalTo: textFeild.topAnchor, constant: 50).isActive = true
    mainButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    mainButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainButton.bottomAnchor.constraint(equalTo: self.mainButton.bottomAnchor, constant: 200)
        
        textFeild.translatesAutoresizingMaskIntoConstraints = false
        textFeild.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        textFeild.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        textFeild.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        textFeild.bottomAnchor.constraint(equalTo: mainButton.topAnchor, constant: 10).isActive = true
        
    }
    
    
    
    
}
extension MainView: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == textMessage{
            textField.text = ""
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let message = textField.text {
            textMessage = message
            
        }
        return true
    }
}

