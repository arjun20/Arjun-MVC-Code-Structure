//
//  AppConstant.swift
//  MVC Code Structure
//
//  Created by Arjun on 09/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import Foundation
import UIKit


let storybord: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)

let baseUrl = "https://www.google.com"
let aboutUsUrl = "https://www.google.com"
let privacyPolicyURl = "https://www.google.com"
let termsAndConditionURl = "https://www.google.com"

//MARK: - Color -
let colorPlaceHolderBlack = UIColor(red: 124, green: 123, blue: 222, alpha: 1.0)
let colorMainBlack        = UIColor(red: 17.0/255.0, green:17.0/255.0, blue: 17.0/255.0, alpha: 1.0)
let colorGreen            = UIColor(red: 48.0/255.0, green: 212.0/255.0,   blue: 83.0/255.0, alpha: 1.0)
let colorRed              = UIColor(red: 255.0/255.0,green: 62.0/255.0,    blue: 62.0/255.0, alpha: 1.0)
let colorViolet           = UIColor(red: 61.0/255.0, green: 8.0/255.0,     blue: 78.0/255.0, alpha: 1.0)
let colorBGWhite          = UIColor(red: 245.0/255.0,green: 245.0/255.0,   blue: 245.0/255.0,alpha: 1.0)
let colorDarkRed          = UIColor(red: 172.0/255.0,green: 19.0/255.0,    blue: 84.0/255.0, alpha: 1.0)
let colorYello            = UIColor(red: 205.0/255.0,green: 218.0/255.0,   blue: 58.0/255.0, alpha: 1.0)
let colorNewBlue = #colorLiteral(red: 0.0000000000, green: 0.0000000000, blue: 0.0000000000, alpha: 1)
let colorBlue = colorViolet

//MARK: - FONT NAME -
let fontBold          = "Montserrat-Bold";
let fontMedium        = "Montserrat-Medium";
let fontLight         = "Montserrat-Light";
let fontExtraLight    = "Montserrat-ExtraLight";
let fontThin          = "Montserrat-Thin";
let fontRegular       = "Montserrat-Regular";
let fontUltraLight    = "Montserrat-UltraLight";

//MARK: - Story Bord in app -
let authenticationSB        :UIStoryboard = UIStoryboard(name: "Authentication",bundle: nil)
let homeSB                  :UIStoryboard = UIStoryboard(name: "Home",bundle: nil)
let kRideHistorySB          :UIStoryboard = UIStoryboard(name: "RideHistory",bundle: nil)
let kSettingsSB             :UIStoryboard = UIStoryboard(name: "Settings",bundle: nil)
let kNotificationSB         :UIStoryboard = UIStoryboard(name: "Notification",bundle: nil)
let kPaymentSettingsSB      :UIStoryboard = UIStoryboard(name: "PaymentSettings",bundle: nil)
let kReferralSB             :UIStoryboard = UIStoryboard(name: "Referral",bundle: nil)
let kWalletSB               :UIStoryboard = UIStoryboard(name: "Wallet",bundle: nil)

//MARK: - UIConst -
let CornerRadius:CGFloat = 5.0
let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height

//MARK: - APP STRING CONST -
let APP_NAME = "IOS APP"
let Email = "email"
let First_Name  = "first name"
let Last_Name = "last name"
let Profile_Image = "pic"
let Login_type =  "login_type"
let Fb_id = "fb id"

//MARK: - String Const -
let LogoutWaring = "Are you sure you want to logout?"
let MessageBody = "Hello Sir,I am your driver at your service."
let isLogin = "Islogin"
let userRole = "User Type"
let isToken = "TOKEN"//
let userID = "customer_id"//

let errorMessage = "Bad server response please try again"
let userDefault = UserDefaults.standard

//MARK: - App Enums -
enum enumUserRole:String {
    case Partner = "Partner"
    case Driver  = "Driver"
    case none = "none"
}
var appLanguage:Languange = .English

enum Languange:String{
    case English = "english"
    case none = "none"
}

enum enumOrderStatus:String {
    case Pending = "Pending"
    case Assigned = "Assigned"
    case Arrived = "Arrived";
    case Processing = "Processing"
    case Completed = "Completed"
    case Cancelled = "Cancelled"
    case None = "None"
}

//MARK: - Key Const -
let kAddress = "Address"
let kLatitude = "latitude"
let kLongitude = "longitude";

//MARK: - enum -
enum LoginType:String{
    case normalLogin = "S"
    case facebookLogin = "F"
    case none = "none"
}

//MARK: - Google Map keys -

var isSandBox = true
let  aGoogleKey:String = {
    if isSandBox {
        return "AIzaSyAzjOrF7cFhgQqzwxUkvnWyDm7HlvKhEDY"
    } else {
        return " "
    }
}()
let  aGoogleBrowserKey:String = {
    
    if isSandBox {
        return "PestYourKeyHere"
    } else {
        return " "
    }
    
}()
//MARK: - Payment Get Ways  keys -
let  payStackPublicKey:String = {
    
    if isSandBox {
        return "pk_test_1fa1babdcbc5eff4c619967cc1f9bae106a015ac"
    }else{
        return " "
    }
    
}()
