//
//  ViewController.swift
//  Form
//
//  Created by Arii on 2024-01-22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loading.isHidden = true
        loggedInLabel.isHidden = true
    }

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var pwLabel: UILabel!
    @IBOutlet weak var meLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var loggedInLabel: UILabel!
    @IBOutlet weak var LOGINlabel: UILabel!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
     @IBAction func loginButton(_ sender: Any) {

        loading.isHidden = false
        loading.startAnimating()
        
        let Username : String = username.text ?? "Mandatory"
        let Password : String = password.text ?? "Mandatory"
        let SegmentControl : Int = segmentControl.selectedSegmentIndex
        var segmentValue : String = ""
        
        if (SegmentControl == 0){
            segmentValue = "Beta"
        }else{
            segmentValue = "Production"
        }
        
        let switchValue = switchButton.isOn
        var variableSwitch = ""
        if(switchValue == true){
            variableSwitch = "On"
        }else{
            variableSwitch = "false"
        }
        
        print("Username: \(Username), Password: \(Password), \(segmentValue), \(variableSwitch)")
        
        username.isHidden = true
        password.isHidden = true
        segmentControl.isHidden = true
        switchButton.isHidden = true
        usernameLabel.isHidden = true
        pwLabel.isHidden = true
        meLabel.isHidden = true
        LOGINlabel.isHidden = true
        loggedInLabel.isHidden = false
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        print("We will send you email to reset.")
    }
    
    @IBAction func loggedInClicked(_ sender: Any) {
        loading.stopAnimating()
        username.isHidden = false
        password.isHidden = false
        switchButton.isHidden = false
        segmentControl.isHidden = false
        usernameLabel.isHidden = false
        pwLabel.isHidden = false
        meLabel.isHidden = false
        LOGINlabel.isHidden = false
        loggedInLabel.isHidden = true
        username.text = ""
        password.text = ""
    }
}
