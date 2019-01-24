//
//  DetailViewController.swift
//  AlansSegueAssignment
//
//  Created by Kevin Waring on 1/24/19.
//  Copyright © 2019 Kevin Waring. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    let detailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.view.addSubview(detailView)
    }
    
    
    init (message: String) {
        super.init(nibName: nil, bundle: nil)
        detailView.myLabel.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
