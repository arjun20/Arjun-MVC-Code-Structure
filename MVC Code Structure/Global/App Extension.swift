
//
//  App Extension.swift
//  MVC Code Structure
//
//  Created by Arjun on 10/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import Foundation
import UIKit
//import GoogleMaps
//import SkyFloatingLabelTextField
typealias GF = GlobalFunction;
extension String {
    
    func InitCap() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.InitCap()
    }
}
class TableViewHelper {
    
    class func EmptyMessage(message:String, viewController:UITableView) {
        
        
        let messageLabel = UILabel()//(frame: CGRect(x:viewController.center.x-100,y:viewController.center.y-30,width:(viewController.backgroundView?.bounds.size.width)!-100,height: (viewController.backgroundView?.bounds.size.height)!-30))
        messageLabel.text = message
        messageLabel.textColor = #colorLiteral(red:0.6666666667, green: 0.6666666667, blue: 0.6666666667, alpha: 1) // lightGray #AAAAAA
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = UIFont(name: fontMedium, size: 15)
        messageLabel.sizeToFit()
        
        viewController.backgroundView = messageLabel;
        viewController.separatorStyle = .none;
    }
}
extension UINavigationController {
    open override func awakeFromNib() {
        
//        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:aColorBGWhite,NSAttributedString.Key.font:UIFont(name: aFontBold, size: 16.0)!]
    }
    
    //    func setNavgationDarkRed(){
    //        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
    //        self.navigationBar.shadowImage = UIImage()
    //        self.navigationBar.isTranslucent = false
    //        self.view.backgroundColor = kColorDarkRed // white #FFFFFF
    //    }
    
}

extension UIImage {
    
    func isEqualToImage(image: UIImage) -> Bool {
        let data1: NSData = self.pngData()! as NSData
        let data2: NSData = image.pngData()! as NSData
        return data1.isEqual(data2)
    }
    
}

extension UIViewController {
    
    @IBAction func back(sender:UIBarButtonItem){
        
        _ =  self.navigationController?.popViewController(animated: true)
        
        
        
        
    }
}

//MARK: - Custome Classes -
extension UIView{
    func fadeIn(duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)  }
    
    func fadeOut(duration: TimeInterval = 1.0, delay: TimeInterval = 1.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
    
    
    func CornerRadius(value:CGFloat){
        self.layer.cornerRadius = (value)
        self.layer.masksToBounds = true
    }
    
    func curruntFirstResponder() -> UIResponder? {
        
        if self.isFirstResponder {
            return self
        }
        
        for view in self.subviews {
            if let responder  = view.curruntFirstResponder() {
                return responder
            }
        }
        return nil;
    }
    
    func getHeight() -> CGFloat {
        return self.frame.size.height
    }
    func getWidth() -> CGFloat{
        return self.frame.size.width
    }
    func makeRoundeRect(Corner_radius:Double) {
        self.layer.cornerRadius = CGFloat(Corner_radius)
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }
    func MakeBorder(Width:Float,BorderColor:UIColor) {
        self.layer.borderWidth = CGFloat(Width)
        self.layer.borderColor = BorderColor.cgColor
    }
    func makeRoundeRectWithShadow(Corner_radius:Double) {
        self.layer.cornerRadius = CGFloat(Corner_radius)
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }
    
    //Bottom Line
    func addBottomBorderWithColor(color: UIColor,origin : CGPoint, width : CGFloat , height : CGFloat) -> CALayer {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x:origin.x, y:(self.frame.size.height - height)-8, width:width, height:height)
        self.layer.addSublayer(border)
        return border
    }
    
    
    
    
    
}


extension UIScrollView {
    open override func awakeFromNib() {
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
    }
}
extension UIButton {
    private func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 01, height: 01)//(x:0.0,y:0.0,height:1.0,width:1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    func setBackgroundColor(color: UIColor, forUIControlState state: UIControl.State) {
        self.setBackgroundImage(imageWithColor(color: color), for: state)
    }
}
extension String
{
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
    
    func heightOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.height
    }
}


//extension SkyFloatingLabelTextField {
//
//    func SetTextField(PlaceHolder:String?) {
//
//        self.lineColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1) // lightGrayCSS3 #D3D3D3
//        self.lineHeight = 1.0
//        self.selectedLineHeight = 1.0
//        self.textColor = kColorMainBlack
//
//        self.selectedLineColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)
//        self.font = UIFont(name: kFontRegular, size: 12.0)
//        self.placeholderColor = kColorPlaceHolderBlack// lightGrayCSS3 #D3D3D3
//
//        self.selectedTitleColor = kColorMainBlack
//        self.titleColor = kColorPlaceHolderBlack // darkGrayCSS3 #A9A9A9
//
//
//        self.placeholder = PlaceHolder
//        self.title = PlaceHolder
//        self.placeholderFont = UIFont(name: kFontRegular, size: 12.0)
//    }
//    func SetTextFieldContactUS(PlaceHolder:String?) {
//
//        self.lineColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1) // lightGrayCSS3 #D3D3D3
//        self.lineHeight = 1.0
//        self.selectedLineHeight = 1.0
//        self.textColor = kColorMainBlack
//
//        self.selectedLineColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)
//        self.font = UIFont(name: kFontRegular, size: 12.0)
//        self.placeholderColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)// lightGrayCSS3 #D3D3D3
//
//        self.selectedTitleColor = kColorMainBlack
//        self.titleColor = kColorMainBlack // darkGrayCSS3 #A9A9A9
//
//
//        self.placeholder = PlaceHolder
//        self.title = PlaceHolder
//        self.placeholderFont = UIFont(name: kFontRegular, size: 12.0)
//    }
//
//
//    open override func awakeFromNib() {
//        self.font = UIFont(name: self.font!.fontName, size: self.font!.pointSize * (kScreenWidth / 320))
//        self.autocapitalizationType = .sentences;
//    }
//
//
//    func SetTextFieldWithoutTitle(PlaceHolder:String?) {
//
//        self.lineColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1) // lightGrayCSS3 #D3D3D3
//        self.lineHeight = 1.0
//        self.selectedLineHeight = 1.0
//        self.textColor = kColorMainBlack
//        self.selectedTitleColor = #colorLiteral(red: 0.0000000000, green: 0.0000000000, blue: 0.0000000000, alpha: 0)
//        self.selectedLineColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)
//        self.font = UIFont(name: kFontRegular, size: 12.0)
//        self.placeholderColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)
//        self.placeholder = PlaceHolder
//        self.placeholderFont = UIFont(name: kFontRegular, size: 12.0)
//        self.title = nil
//        self.titleColor = #colorLiteral(red: 0.0000000000, green: 0.0000000000, blue: 0.0000000000, alpha: 0) // clear #000000
//
//    }
//    //
//    func SetTextFieldForErrorFeild(PlaceHolder:String?) {
//        self.errorColor = kColorViolet
//        self.lineColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)
//        self.lineHeight = 1.0
//        self.selectedLineHeight = 1.0
//        self.textColor = kColorMainBlack
//        self.selectedLineColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)
//        self.font = UIFont(name: kFontRegular, size: 12.0)
//        self.placeholderColor = kColorPlaceHolderBlack// lightGrayCSS3 #D3D3D3
//        self.selectedTitleColor = kColorMainBlack
//        self.titleColor = kColorPlaceHolderBlack // darkGrayCSS3 #A9A9A9
//        self.placeholder = PlaceHolder
//        self.title = PlaceHolder
//        self.placeholderFont = UIFont(name: kFontRegular, size: 12.0)
//    }
//
//
//}
extension UITextField {
    func addRightView(img:UIImage){
        self.rightViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 15, height: 13))
        imageView.contentMode = .center
        let image = img
        imageView.image = image
        self.rightView = imageView
    }
}
extension String {
    var local: String {
        // var localized: String {
        //return NSLocalizedString(self, tableName: nil, bundle: GF.sharedInstance().getBundleName(), value: "", comment: "")
        //    return NSLocalizedString(self, tableName: nil, bundle: AppDelegate.Shared.getBundleName(), value: "", comment: "")
        return NSLocalizedString(self, comment: "")
    }
}
//extension GMSMapView {
//    func mapStyle(withFilename name: String, andType type: String) {
//        /*  do {
//         if let styleURL = Bundle.main.url(forResource: name, withExtension: type) {
//         self.mapStyle = try GMSMapStyle(contentsOfFileURL: styleURL)
//         } else {
//         NSLog("Unable to find style.json")
//         }
//         } catch {
//         NSLog("One or more of the map styles failed to load. \(error)")
//         }*/
//    }
//}

extension UIButton {
    open override func   awakeFromNib() {
        
        //    self.titleLabel?.font = UIFont(name: (self.titleLabel?.font.fontName)!, size: (self.titleLabel?.font.pointSize)! * ((kScreenWidth / 320.0)))
    }
}
extension UILabel {
    
    open override func awakeFromNib() {
        
        self.font = UIFont(name: self.font.fontName, size: self.font.pointSize * ((ScreenWidth / 320.0)))
    }
}

extension UITextField {
    
    open override func awakeFromNib() {
        self.font = UIFont(name: (self.font?.fontName)!, size: (self.font?.pointSize)! * ((ScreenWidth / 320.0)))
        self.autocapitalizationType = .sentences;
    }
    
}
extension UITextView  {
    
    open override func awakeFromNib() {
        self.font = UIFont(name: (self.font?.fontName)!, size: (self.font?.pointSize)! * ((ScreenWidth / 320.0)))
    }
    
}
extension UILabel{
    func setAmount(amount:String,Currency:String){
        
        let att_riderId = NSMutableAttributedString(string:Currency,attributes:[NSAttributedString.Key.font:UIFont(name:fontThin,size:12)!])
        att_riderId.append(NSMutableAttributedString(string:" "+amount,attributes:[NSAttributedString.Key.font:UIFont.init(name:fontMedium,size:15)!]))
        self.attributedText = att_riderId
        
    }
}


extension String {
    
    var length: Int {
        get {
//            return self.characters.count
            return self.count
            
        }
    }
    
    //--------------------------------------------------------------------------------------
    
    var textRange : NSRange {
        get {
            return NSMakeRange( 0 , self.length )
        }
    }
    
    //--------------------------------------------------------------------------------------
    
    func font( Name : String , Size : CGFloat) -> NSMutableAttributedString {
        
        let attrString  = NSMutableAttributedString(string:self,attributes:[NSAttributedString.Key.font:UIFont.init(name:Name,size:Size)!])
        return attrString
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func color( Name : UIColor , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : self.textRange
        
        let attrString  = NSMutableAttributedString(string: self )
        
        attrString.addAttributes( [ NSAttributedString.Key.foregroundColor  : Name ] ,
                                  range                           : rng )
        return attrString
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func bgColor( Name : UIColor , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : self.textRange
        
        let attrString  = NSMutableAttributedString(string: self )
        
        attrString.addAttributes( [ NSAttributedString.Key.backgroundColor  : Name ] ,
                                  range                           : rng )
        return attrString
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func underLine( Type : NSUnderlineStyle , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : self.textRange
        
        let attrString  = NSMutableAttributedString(string: self )
        
        attrString.addAttributes( [ NSAttributedString.Key.underlineStyle   : Type ] ,
                                  range                           : rng )
        return attrString
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func alignment( align : NSTextAlignment , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : self.textRange
        
        let attrString  = NSMutableAttributedString(string: self )
        let parag       = NSMutableParagraphStyle()
        parag.alignment = align
        
        attrString.addAttributes( [ NSAttributedString.Key.paragraphStyle   : parag ] ,
                                  range                           : rng )
        return attrString
        
    }
    
    
}

extension NSMutableAttributedString {
    
    static func + ( left : NSMutableAttributedString , right : NSMutableAttributedString ) -> NSMutableAttributedString {
        left.append(right)
        return left
    }
    
    //--------------------------------------------------------------------------------------
    
    func font( Name : String , Size : CGFloat  , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : ( self.mutableString as String ).textRange
        
        self.addAttributes( [   NSAttributedString.Key.font : UIFont(name: Name , size: Size )!] ,
                            range               : rng )
        
        
        return self
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func color( Name : UIColor , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : ( self.mutableString as String ).textRange
        
        self.addAttributes( [   NSAttributedString.Key.foregroundColor  : Name ] ,
                            range                           : rng )
        return self
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func bgColor( Name : UIColor , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : ( self.mutableString as String ).textRange
        
        self.addAttributes( [   NSAttributedString.Key.backgroundColor  : Name ] ,
                            range                           : rng )
        return self
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func underLine( Type : NSUnderlineStyle , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : ( self.mutableString as String ).textRange
        
        self.addAttributes( [   NSAttributedString.Key.underlineStyle   : Type ] ,
                            range                           : rng )
        return self
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func alignment( align : NSTextAlignment , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : ( self.mutableString as String ).textRange
        
        var parag       = NSMutableParagraphStyle()
        
        parag.checkIfParagraphStyleAlreadyAvailable(attStrng: self, objSelf: &parag)
        
        parag.alignment = align
        
        self.addAttributes( [   NSAttributedString.Key.paragraphStyle   : parag ] ,
                            range                           : rng )
        return self
        
    }
    
    //--------------------------------------------------------------------------------------
    
    func lineSpacing( lineSpac : CGFloat , range : NSRange? = nil  ) -> NSMutableAttributedString {
        
        let rng : NSRange = (range != nil) ? range! : ( self.mutableString as String ).textRange
        
        var parag           = NSMutableParagraphStyle()
        
        parag.checkIfParagraphStyleAlreadyAvailable(attStrng: self, objSelf: &parag)
        
        parag.lineSpacing   = lineSpac
        
        self.addAttributes( [   NSAttributedString.Key.paragraphStyle   : parag ] ,
                            range                           : rng )
        return self
        
    }
    
    
}
extension NSDate {
    
    func isGreaterThanDate(dateToCompare: NSDate) -> Bool {
        //Declare Variables
        var isGreater = false
        
        //Compare Values
        if self.compare(dateToCompare as Date) == ComparisonResult.orderedDescending {
            isGreater = true
        }
        
        //Return Result
        return isGreater
    }
    
    func isLessThanDate(dateToCompare: NSDate) -> Bool {
        //Declare Variables
        var isLess = false
        
        //Compare Values
        if self.compare(dateToCompare as Date) == ComparisonResult.orderedAscending {
            isLess = true
        }
        
        //Return Result
        return isLess
    }
    
    func equalToDate(dateToCompare: NSDate) -> Bool {
        //Declare Variables
        var isEqualTo = false
        
        //Compare Values
        if self.compare(dateToCompare as Date) == ComparisonResult.orderedSame {
            isEqualTo = true
        }
        
        //Return Result
        return isEqualTo
    }
    
    func addDays(daysToAdd: Int) -> NSDate {
        let secondsInDays: TimeInterval = Double(daysToAdd) * 60 * 60 * 24
        let dateWithDaysAdded: NSDate = self.addingTimeInterval(secondsInDays)
        
        //Return Result
        return dateWithDaysAdded
    }
    
    func addMinutes(minutesToAdd: Int) -> NSDate {
        
        let secondsInHours: TimeInterval = Double(minutesToAdd) * 60
        
        let dateWithMinutesAdded: NSDate = self.addingTimeInterval(secondsInHours)
        
        //Return Result
        return dateWithMinutesAdded
    }
    func addHours(HoursToAdd: Int) -> NSDate {
        
        let secondsInHours: TimeInterval = Double(HoursToAdd) * 60 * 60
        let dateWithMinutesAdded: NSDate = self.addingTimeInterval(secondsInHours)
        //Return Result
        return dateWithMinutesAdded
    }
}
extension NSMutableParagraphStyle {
    
    func checkIfParagraphStyleAlreadyAvailable ( attStrng : NSMutableAttributedString , objSelf : inout NSMutableParagraphStyle  )  {
        // if yes then repalce
        
        if attStrng.attribute(NSAttributedString.Key.paragraphStyle,
                              at: 0,
                              longestEffectiveRange: nil,
                              in: ( attStrng.mutableString as String ).textRange ) != nil {
            
            objSelf = attStrng.attribute(NSAttributedString.Key.paragraphStyle, at: 0, longestEffectiveRange: nil, in: ( attStrng.mutableString as String ).textRange) as! NSMutableParagraphStyle
            
        }
        
    }
    
}


enum error : Error {
    case Null
}

extension NSDictionary {
    
    open func Value(forUndefinedKey key: String) throws -> Any? {
        
        if self.value(forKey: key) == nil {
            throw error.Null
        }else {
            return self.value(forKey: key) as AnyObject?
        }
        
    }
    
    
}
let keyWindowS = UIApplication.shared.connectedScenes
    .filter({$0.activationState == .foregroundActive})
    .map({$0 as? UIWindowScene})
    .compactMap({$0})
    .first?.windows
    .filter({$0.isKeyWindow}).first


extension UIApplication {
    class func topViewController(controller: UIViewController? = keyWindowS?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
    
}
extension Dictionary {
    mutating func update(other:Dictionary) {
        for (key,value) in other {
            self.updateValue(value, forKey:key)
        }
    }
}

//extension CLLocationCoordinate2D {
//    
//    func getBearing(toPoint point: CLLocationCoordinate2D) -> Double {
//        func degreesToRadians(degrees: Double) -> Double { return degrees * M_PI / 180.0 }
//        func radiansToDegrees(radians: Double) -> Double { return radians * 180.0 / M_PI }
//        
//        let lat1 = degreesToRadians(degrees: latitude)
//        let lon1 = degreesToRadians(degrees: longitude)
//        
//        let lat2 = degreesToRadians(degrees: point.latitude);
//        let lon2 = degreesToRadians(degrees: point.longitude);
//        
//        let dLon = lon2 - lon1;
//        
//        let y = sin(dLon) * cos(lat2);
//        let x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon);
//        let radiansBearing = atan2(y, x);
//        
//        debugPrint("bearing " , radiansToDegrees(radians: radiansBearing))
//        
//        let degree = radiansToDegrees(radians: radiansBearing)
//        if degree >= 0 {
//            return degree
//        } else {
//            return 360 + degree
//        }
//        
//        //        return radiansToDegrees(radians: radiansBearing)
//    }
//    
//    func distanceInMetersFrom(otherCoord : CLLocationCoordinate2D) -> CLLocationDistance {
//        let firstLoc = CLLocation(latitude: self.latitude, longitude: self.longitude)
//        let secondLoc = CLLocation(latitude: otherCoord.latitude, longitude: otherCoord.longitude)
//        
//        //        print("latitude:",self.latitude,"longitude:",self.longitude)
//        //        print("latitude:",otherCoord.latitude,"longitude:",otherCoord.longitude)
//        //        print(firstLoc.distance(from: secondLoc))
//        return firstLoc.distance(from: secondLoc)
//    }
//}



