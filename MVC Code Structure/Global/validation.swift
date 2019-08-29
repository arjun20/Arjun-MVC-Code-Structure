//
//  validation.swift
//  MVC Code Structure
//
//  Created by Arjun on 10/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

let kEnterNameRezx                      = "[a-zA-Z\\s]"
let kEnterPhoneNumberRezx               = "[0-9]"

class validation: NSObject {

    //--------------------------------------------------------------------------------------
    
    static func isAlphabaticString(txt: String)         -> Bool {
        //        [a-zA-Zء-ي ]
        let RegEx   = "[A-Za-zء-ي ]+"
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        return result;
    }
    
    //--------------------------------------------------------------------------------------
    static func checkPhoneNumber(string : String) -> Bool {
        let kEnterPhoneNumberRezx               = "[0-9]"
        let emalCheck = NSPredicate(format:"SELF MATCHES %@",kEnterPhoneNumberRezx)
        return emalCheck.evaluate(with: string)
    }
    
    static func checkName(string : String ) -> Bool {
        let kEnterNameRezx                      = "[a-zA-Z\\s]"
        let emalCheck = NSPredicate(format:"SELF MATCHES %@",kEnterNameRezx)
        return emalCheck.evaluate(with: string)
    }
    
    static func isAlphaNummericString(txt: String)      -> Bool {
        
        let RegEx   = "^[A-Za-z0-9ء-ي_ ]+$"
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        return result;
    }
    
    //--------------------------------------------------------------------------------------
    
    static func isValidMiddleName(txt: String)          -> Bool {
        let RegEx   = "[A-Za-z]{1}+\\.?"
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        //debugPrint("str : \(txt) validation : \(result)")
        return result
    }
    
    //--------------------------------------------------------------------------------------
    
    static func isValidFirstName(txt: String)           -> Bool {
        let RegEx   = "^[A-Z][a-z]*$"
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        //debugPrint("str : \(txt) validation : \(result)")
        return result
    }
    
    //--------------------------------------------------------------------------------------
    
    static func isValidAgeRangeName(txt: String)        -> Bool {
        let RegEx   = "^(0?[1-9]|[1-9][0-9])$"
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        //debugPrint("str : \(txt) validation : \(result)")
        return result
    }
    
    //--------------------------------------------------------------------------------------
    
    static  func isValidEmail(testStr:String)           -> Bool {
        let emailRegEx  = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,4})$"
        //  "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,4})$"
        //
        let emailTest   = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    //--------------------------------------------------------------------------------------
    
    static func isValidNumber(txt: String)              -> Bool {
        
        let RegEx   = "[0-9]+"
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        return result;
    }
    
    //--------------------------------------------------------------------------------------
    
    static func isValidPostalCode(txt: String)          -> Bool {
        
        let RegEx   = "^[A-Za-z0-9- ]{1,10}$"
        //debugPrint(txt)
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        return result;
    }
    
    //--------------------------------------------------------------------------------------
    
    static func isValidBankInfoStartCode(txt: String)   -> Bool {
        
        let RegEx   = "[A-Za-z0-9]+"
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        return result;
    }
    
    //--------------------------------------------------------------------------------------
    
    static func isValidBankInfoCode(txt: String)        -> Bool {
        
        let RegEx   = "[A-Za-z0-9- ]+"
        let eTest   = NSPredicate(format:"SELF MATCHES %@", RegEx)
        let result  = eTest.evaluate(with: txt)
        return result;
    }
    
}
