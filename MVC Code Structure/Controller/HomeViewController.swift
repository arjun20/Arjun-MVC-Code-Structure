//
//  HomeViewController.swift
//  MVC Code Structure
//
//  Created by Arjun on 10/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    //MARK:- OUTLATE
    @IBOutlet weak var Btn: UIButton!
    
    //MARK:- VARIABLE

    //MARK:- VIEW LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
//        GlobalFunction.Shared.loaderShowAndHide(uiView: self.view, isLoaderShow: true)
        GlobalFunction.Shared.showLoader()
        
    }
    
    //MARK:- BUTTON ACTION
    @IBAction func btn(_ sender: UIButton) {
        GlobalFunction.Shared.hideLoader()
//        GlobalFunction.Shared.loaderShowAndHide(uiView: self.view, isLoaderShow: false)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
