//
//  BaseViewController.swift
//  MVC Code Structure
//
//  Created by Arjun on 08/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    //MARK:- OUTLATE

    
    //MARK:- VARIABLE
    var backgroundImageView = UIImageView()
    
    //MARK:- VIEW LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barStyle = .black

    }
    
    //MARK:- STATUSBAR
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    //MARK:- APP FUNCTION
    func setBackground() {
        backgroundImageView.image       = UIImage(named: "base-background")
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints                        = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
}
