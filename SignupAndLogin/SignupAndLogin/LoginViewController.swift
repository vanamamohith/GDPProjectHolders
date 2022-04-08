//
//  LoginViewController.swift
//  SignupAndLogin
//
//  Created by student on 3/17/22.
//

import UIKit

class LoginViewController: UIViewController {
    var arr = ["sai@gmail.com","12345"]
    var img = ["checkmark.circle","checkmark.circle.fill"]
    var cnt = 0
    
    @IBOutlet weak var emailTextField: UILabel!
    
    
    @IBOutlet weak var passwordTextField: UILabel!
    
    @IBOutlet weak var checkboxOutlet: UIButton!

    @IBOutlet weak var emailId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkboxClicked(_ sender: UIButton) {
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
    
    @IBAction func signupLink(_ sender: Any) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Signup")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        if(emailId.text == "" && password.text == "")
        {
            emailTextField.text = "* Required Field"
            passwordTextField.text = "* Required Field"
        }
        else if(emailId.text == "" || password.text == "")
        {
            if(emailId.text == "" && password.text != "")
            {
                emailTextField.text = "* Required Field"
                passwordTextField.text = ""
            }
            else if (password.text == "" && emailId.text != "")
            {
                passwordTextField.text = "* Required Field"
                emailTextField.text = ""
            }
        }
        else if(emailId.text != arr[0] && password.text != arr[1])
        {
            let uialert = UIAlertController( title: "", message: "EmailID / Password is incorrect", preferredStyle: UIAlertController.Style.alert)
            uialert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
            self.present(uialert, animated: true, completion: nil)
        }
        else{
            let storyboard = UIStoryboard(name : "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "home")
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
        }
        
        
        
        
        
        
    }
    
    
    @IBAction func emailIdOrPass(_ sender: Any) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "emailidORPassword")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    

    @IBAction func emailIDTexting(_ sender: Any) {
        emailTextField.text = ""
    }
    
    @IBAction func passwordTexting(_ sender: Any) {
        passwordTextField.text = ""
    }
    
    
    @IBAction func createAccount(_ sender: UIButton) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Signup")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
}
