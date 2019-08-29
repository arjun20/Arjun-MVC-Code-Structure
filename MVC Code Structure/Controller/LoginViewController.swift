//
//  LoginViewController.swift
//  MVC Code Structure
//
//  Created by Arjun on 13/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    //MARK:- OUTLET
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblForgotPassowrd: UILabel!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignup: UILabel!
    
    //MARK:- VARIABLE
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(tapFunction(sender:)))
        
        btnSignup.isUserInteractionEnabled = true
        btnSignup.addGestureRecognizer(tap)
    }


    //MARK:- BUTTON ACTION
    @IBAction func btnLoginAction(_ sender: UIButton) {
        let ViewController: HomeViewController = storybord.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(ViewController, animated: true)
    }
    
    @objc func tapFunction(sender:UITapGestureRecognizer) {
        
        let signupView:SignUpViewController = storybord.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(signupView, animated: true)
        
    }
    
    //MARK:- Validation
    func checkValidation(){
        
    }
    
    
    //MARK:- COUSTOM FINCTION
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
