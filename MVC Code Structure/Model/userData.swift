//
//  userData.swift
//  MVC Code Structure
//
//  Created by Arjun on 19/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

class userData: NSObject {

    var firstName : String = ""
    var lastName : String = ""
    var email : String = ""
    var companyName : String = ""
    var gender : String = ""
    var userAge : integer_t = 0
    
    init(FirstName: String, LastName : String, Email:String, CompanyName : String, Gender : String , UserAge:integer_t) {
        self.firstName = FirstName
        self.lastName = LastName
        self.email = Email
        self.companyName = CompanyName
        self.gender = Gender
        self.userAge = UserAge
    }
    
}
