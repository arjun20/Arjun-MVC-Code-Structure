//
//  SignUpViewController.swift
//  MVC Code Structure
//
//  Created by Arjun on 20/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

class SignUpViewController: BaseViewController{

    //MARK:- OUTLATE
    @IBOutlet weak var tblSignUp: SignUptableView!
    
    //MARK:- VARIABLE
    private var user:[userData]?
    
    //MARK:- VIEW LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableview()
        
    }
    
    //MARK:- APP FUNCTION
    func configureTableview(){
        
        tblSignUp.estimatedRowHeight = UITableView.automaticDimension
//        tblSignUp.rowHeight = 100
        tblSignUp.backgroundColor = UIColor.red
        
        self.tblSignUp.register(UINib(nibName: "signupTableViewCell", bundle: nil), forCellReuseIdentifier: "signupTableViewCell")
        
    }

}
