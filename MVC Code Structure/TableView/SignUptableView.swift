//
//  SignUptableView.swift
//  MVC Code Structure
//
//  Created by Arjun on 20/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

class SignUptableView: UITableView,UITableViewDelegate,UITableViewDataSource {

//    private let identifer = "signupCell"
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell = self.dequeueReusableCell(withIdentifier: "signupTableViewCell", for: IndexPath.init(row: indexPath.row, section: 0))
        cell.backgroundColor = UIColor.green
        return cell
//        let cell:UITableViewCell = (self.dequeueReusableCell(withIdentifier: identifer) ?? nil)!
//        cell.textLabel?.text = "Arjun"
//        cell.backgroundView?.backgroundColor = UIColor.red
//        return cell
    }
}
