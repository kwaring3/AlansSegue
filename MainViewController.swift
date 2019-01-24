//
//  MainViewController.swift
//  AlansSegueAssignment
//
//  Created by Kevin Waring on 1/24/19.
//  Copyright © 2019 Kevin Waring. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(mainView)
        mainView.delegate = self
    }
    
    

    
}
extension MainViewController: MainViewDelegate {
    func buttonPressed() {
        let detail = DetailViewController.init(message: "")
        navigationController?.pushViewController(detail, animated: true)
    }
}

