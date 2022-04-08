//
//  SignupViewController.swift
//  SignupAndLogin
//
//  Created by student on 3/17/22.
//

import UIKit

class CellClass: UITableViewCell{
    
}

class SignupViewController: UIViewController{
    
    
    let transparentView = UIView()
    let tableView = UITableView()
    var selectedButton = UIButton()
    var dataSource = [String]()
    
    var img = ["checkmark.circle","checkmark.circle.fill"]
    var cnt = 0
    
    var fieldss = ["password.text","firstName.text","lastname.text","dateofbirth.text","phonenumber.text","password.text","confirmpassword.text","passportnumber.text","homecountry.text"]
    
    @IBOutlet weak var firstNameErrorMsg: UILabel!
    
    @IBOutlet weak var lastNameErrorMsg: UILabel!
    
    @IBOutlet weak var dateOfBirthErrorMsg: UILabel!
    
    @IBOutlet weak var phoneNumbererrorMsg: UILabel!
    
    @IBOutlet weak var passportIssuecountryErrMsg: UILabel!
    
    @IBOutlet weak var passportNumberError: UILabel!
    
    @IBOutlet weak var passwordErrMsg: UILabel!
    
    @IBOutlet weak var confirmPassErrMsg: UILabel!
    
    @IBOutlet weak var dropdownOutlet: UIButton!
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastname: UITextField!
    
    @IBOutlet weak var dateofbirth: UITextField!
    
    @IBOutlet weak var phonenumber: UITextField!
    
    @IBOutlet weak var confirmpassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passportnumber: UITextField!
    @IBOutlet weak var homecountry: UITextField!
    
    @IBOutlet weak var checkboxOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginlinkclicked(_ sender: Any) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    @IBAction func signupbuttonclicked(_ sender: Any) {
    
        if(password.text == "" || firstName.text == "" || lastname.text == "" || dateofbirth.text == "" || phonenumber.text == "" || password.text == "" || confirmpassword.text == "" || passportnumber.text == "" || homecountry.text == "")
        {
            if(password.text == "")
            {
                passwordErrMsg.text = "*Required Field"
            }
            if(firstName.text == "")
            {
                firstNameErrorMsg.text = "*Required Field"
            }
            if(lastname.text == "")
            {
                lastNameErrorMsg.text = "*Required Field"
            }
            if(dateofbirth.text == "")
            {
                dateOfBirthErrorMsg.text = "*Required Field"
            }
            if(phonenumber.text == "")
            {
                phoneNumbererrorMsg.text = "*Required Field"
            }
            if(password.text == "")
            {
                passwordErrMsg.text = "*Required Field"
            }
            if(confirmpassword.text == "")
            {
                confirmPassErrMsg.text = "*Required Field"
            }
            if(passportnumber.text == "")
            {
                passportNumberError.text = "*Required Field"
            }
            if(homecountry.text == "")
            {
                passportIssuecountryErrMsg.text = "*Required Field"
            }
        }
        else{
            let storyboard = UIStoryboard(name : "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "EmailOrPassword")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
            
        }
    }
    
    
    
    @IBAction func dropdownclicked(_ sender: Any) {

    }
    
    
    @IBAction func checkboxClicked(_ sender: Any) {
        if(cnt == 1)
        {
        checkboxOutlet.setImage(UIImage(systemName: img[0]), for: .normal)
            cnt = cnt - 1
        }
        else if(cnt == 0)
        {
            checkboxOutlet.setImage(UIImage(systemName: img[1]), for: .normal)
            cnt = cnt + 1
        }
    }
    
    
    @IBAction func firstNameTexting(_ sender: Any) {
        firstNameErrorMsg.text = ""
    }
    
    @IBAction func lastNameTextting(_ sender: Any) {
        lastNameErrorMsg.text = ""
    }
    
    @IBAction func dateOfBirthTexting(_ sender: Any) {
        dateOfBirthErrorMsg.text = ""
    }
    
    @IBAction func phoneNumberTexting(_ sender: Any) {
        phoneNumbererrorMsg.text = ""
    }
    
    
    @IBAction func countryTexting(_ sender: Any) {
        passportIssuecountryErrMsg.text = ""
    }
    
    @IBAction func passportNumberTexting(_ sender: Any) {
        passportNumberError.text = ""
    }
    
    @IBAction func passwordTexting(_ sender: Any) {
        passwordErrMsg.text = ""
    }
    
    
    @IBAction func confirmPasswordClicked(_ sender: Any) {
        confirmPassErrMsg.text = ""
    }
    
    

    @IBAction func referPassword(_ sender: UIButton) {
        let uialert = UIAlertController( title: "", message: "Password must contain ", preferredStyle: UIAlertController.Style.alert)
        uialert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(uialert, animated: true, completion: nil)
    }
    
    
}
