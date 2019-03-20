//
//  ViewController.swift
//  simple login
//
//  Created by Amrit on 2019-03-19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //under variable for userdefsult
let storeuserdata = UserDefaults.standard
    @IBOutlet weak var txtmail: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var lblinvalidemail: UILabel!
    
    @IBOutlet weak var lblinvalidpassword: UILabel!
    
    @IBOutlet weak var lbllsucessfully: UILabel!
    
    @IBOutlet weak var remembermeswicth: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //under userdefault code
        if let email = storeuserdata.string(forKey: "userID"){
            txtmail.text = email
            if let password = storeuserdata.string(forKey: "userPass"){
                txtpassword.text = password
                remembermeswicth.isOn = true
            }
        }else{
            remembermeswicth.isOn = false
        }
        
    }
//login code
    @IBAction func btnlogin(_ sender: UIButton) {
        lblinvalidemail.text = ""
        lblinvalidpassword.text = ""
        lbllsucessfully.text = ""
        if txtmail.text == "a@a.com"  {
            if txtpassword.text == "amrit"{
                lbllsucessfully.text = "Login Successful"
                
                if remembermeswicth.isOn{
                    storeuserdata.set(txtmail.text, forKey: "userID")
                    storeuserdata.set(txtpassword.text, forKey: "userPass")
                }else{
                    storeuserdata.removeObject(forKey: "userID")
                    storeuserdata.removeObject(forKey: "userPass")
                }
                
                
               /* let alert = UIAlertController(title: "Alert", message: "Login Successfully", preferredStyle: .alert)
                let action1 = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action1)
                self.present(alert,animated: true)*/
                
                
                let a = UIStoryboard(name: "Main", bundle: nil)
                let b = a.instantiateViewController(withIdentifier: "home") as! homeViewController
                self.navigationController?.pushViewController(b, animated: true)
                
            }
            else
            {
                lblinvalidpassword.text="Invalid Password"
            }
        }
        else
        {
            lblinvalidemail.text="Invalid Email"
        }
    }
    }
    


