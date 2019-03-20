//
//  homeViewController.swift
//  simple login
//
//  Created by Amrit on 2019-03-19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //back button hide
//self.navigationItem.hidesBackButton = true
       
    }
    

    @IBAction func btnhome(_ sender: UIButton) {
        let c = UIStoryboard(name: "Main", bundle: nil)
        let d = c.instantiateViewController(withIdentifier: "amrit") as! amrittableTableViewController
        self.navigationController?.pushViewController(d, animated: true)
    }
    

}
