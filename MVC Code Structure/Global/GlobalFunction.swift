//
//  GlobalFunction.swift
//  MVC Code Structure
//
//  Created by Arjun on 09/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

class GlobalFunction: NSObject {
    
    static let Shared :GlobalFunction = GlobalFunction()
    
    func randomInt(min: Int, max:Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(Int(max - min + 1))))
    }
    
    func heightWithConstrainedWidth(str : String ,width: CGFloat, font: UIFont) -> CGFloat {
        
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude);
        let boundingBox = str.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil);
        return boundingBox.height
    }
    
    func ShowAlert(AppName:String = APP_NAME,Message:String) {
        
        let alert = UIAlertController(title: AppName, message: Message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//        UIApplication.shared.inputViewController?.present(alert, animated: true, completion: nil)
        AppDelegate.shared.window?.rootViewController?.present(alert, animated: true, completion: nil)
        
    }
    func ShowAlertOK(AppName:String = APP_NAME,Message:String,completion: @escaping (_ result: Bool) -> Void) {
        let alert = UIAlertController(title: AppName, message: Message, preferredStyle: UIAlertController.Style.alert)
        
        let OkAction = UIAlertAction(title: "OK", style: .cancel) { (ok) in
            completion(true)
        }
        alert.addAction(OkAction)
//        UIApplication.shared.inputViewController?.present(alert, animated: true, completion: nil)
        AppDelegate.shared.window?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    func ShowAlert_OK_CANCEL(AppName:String = APP_NAME,Message:String,completion: @escaping (_ result: Bool) -> Void) {
        
        let alert = UIAlertController(title: AppName, message: Message, preferredStyle: UIAlertController.Style.alert)
        let OkAction = UIAlertAction(title: "OK", style: .default) { (ok) in
            completion(true)
        }
        let CancelAction = UIAlertAction(title: "Cancel", style: .destructive) { (ok) in
            completion(false)
        }
        
        alert.addAction(CancelAction)
        alert.addAction(OkAction)
//        UIApplication.shared.keyWindow?.rootViewController!.present(alert, animated: true, completion: nil)
        UIApplication.shared.inputViewController?.present(alert, animated: true, completion: nil)
//        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    
    func convertToLocal(sourceDate : NSDate)-> NSDate{
        
        let sourceTimeZone                                      = NSTimeZone(abbreviation: "EDT")//NSTimeZone(name: "America/Los_Angeles")
        let destinationTimeZone                                 = NSTimeZone.system
        
        //calc time difference
        let sourceGMTOffset         : NSInteger                 = (sourceTimeZone?.secondsFromGMT(for: sourceDate as Date))!
        let destinationGMTOffset    : NSInteger                 = destinationTimeZone.secondsFromGMT(for: sourceDate as Date)
        let interval                : TimeInterval            = TimeInterval(destinationGMTOffset-sourceGMTOffset)
        
        //set currunt date
        let date: NSDate                                        = NSDate(timeInterval: interval, since: sourceDate as Date)
        return date
        
        
    }
    func converTolocal(sourceDate:Date) -> Date {
        let sourceTimeZone                                     = NSTimeZone(abbreviation: "UTC")//NSTimeZone(name: "America/Los_Angeles") EDT
        let destinationTimeZone                                = NSTimeZone.system
        
        //calc time difference
        let sourceGMTOffset         : NSInteger                = (sourceTimeZone?.secondsFromGMT(for: sourceDate as Date))!
        let destinationGMTOffset    : NSInteger                = destinationTimeZone.secondsFromGMT(for:sourceDate as Date)
        let interval                : TimeInterval             = TimeInterval(destinationGMTOffset-sourceGMTOffset)
        
        //set currunt date
        let date: Date                                          = Date(timeInterval: interval, since: sourceDate as Date)
        return date
        //}
    }
    func convertToUTC(_ sourceDate : Date)-> Date{
        
        let sourceTimeZone = TimeZone.current
        let destinationTimeZone = TimeZone(abbreviation: "EDT")
        
        //calc time difference
        let sourceGMTOffset : NSInteger = (sourceTimeZone.secondsFromGMT(for: sourceDate))
        let destinationGMTOffset : NSInteger = destinationTimeZone!.secondsFromGMT(for: sourceDate)
        let interval : TimeInterval = TimeInterval(destinationGMTOffset-sourceGMTOffset)
        
        //set currunt date
        let date: Date = Date(timeInterval: interval, since: sourceDate)
        return date
    }
    var activityIndicator = UIActivityIndicatorView()
    func showLoader(){
        
        activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        activityIndicator.center = uiView.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        activityIndicator.tag = -99
        AppDelegate.shared.window?.addSubview(activityIndicator)
//        AppDelegate.shared.window?.rootViewController?.view.addSubview(<#T##view: UIView##UIView#>)
    }
    
    func hideLoader(){
        
        activityIndicator.stopAnimating()
//        uiView.removeFromSuperview()
        
    }
}
