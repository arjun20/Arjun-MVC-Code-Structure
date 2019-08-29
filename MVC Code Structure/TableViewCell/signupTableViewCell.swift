//
//  signupTableViewCell.swift
//  MVC Code Structure
//
//  Created by Arjun on 21/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

class signupTableViewCell: UITableViewCell {

//    @IBOutlet weak var backgroundview: UIView!
    @IBOutlet weak var txtTextfield: UITextField!
    
    var complictionHandler:((String)->Int)?
    
    override func awakeFromNib() {
        super.awakeFromNib()

        setupUI()
        
    }
    fileprivate func setupUI(){
    
    }
    
    private func setupCell(model:[String:AnyObject],indexpath:IndexPath){
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
