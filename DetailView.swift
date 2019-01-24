//
//  DetailView.swift
//  AlansSegueAssignment
//
//  Created by Kevin Waring on 1/24/19.
//  Copyright © 2019 Kevin Waring. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Kevin"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white
        addSubview(myLabel)
        setConStraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setConStraints() {
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
