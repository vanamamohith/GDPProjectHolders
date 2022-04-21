//
//  HomeViewController.swift
//  SignupAndLogin
//
//  Created by student on 3/18/22.
//

import UIKit

class HomeViewController: UIViewController{
    
    
    var isClicked = true
    
    var sClicked = true
    
    @IBOutlet weak var welcomeOutlet: UILabel!
    
    //********************************
    //retreve data from signup
    var fname : String?
    var lname : String?
    var dob : String?
    var phNum : String?
    var passNum : String?
    var issuedCountry : String?
    var mailId : String?
    //*********************************
    
//    var scrollView: UIScrollView!
//    var mainView : UIView!
    
    @IBOutlet weak var sideViewControl: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        scrollView?.contentSize = (CGSize(width: mainView.frame.size.width, height: mainView.frame.size.height))
        welcomeOutlet.text = "Welcome \(fname!)!"
        sideViewControl.constant = -240
        
        personIconConstraint.constant = 210
        
        
    }
    
    
    
    
    @IBOutlet weak var personIconConstraint: NSLayoutConstraint!
    
    
    
    @IBAction func iconClicked(_ sender: Any) {
        
        if(isClicked == false)
        {
            sideViewControl.constant = -240
        }
        
        sClicked = !sClicked
        if sClicked
        {
            personIconConstraint.constant = 210
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            personIconConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func personalInfoClicked(_ sender: Any) {
        
        sideViewControl.constant = -240
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "PersonalInfo") as! PersonalInfoViewController
        controller.fname = self.fname
        controller.lname = self.lname
        controller.dob = self.dob
        controller.passNum = self.passNum
        controller.issuedCountry = self.issuedCountry
        controller.phNum = self.phNum
        controller.mailId = self.mailId
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
    
    
    @IBAction func changePasswordClicked(_ sender: Any) {
        
        sideViewControl.constant = -240
        
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "changePassword") as! ChangePasswordViewController
        
        controller.fname = self.fname
        controller.lname = self.lname
        controller.dob = self.dob
        controller.passNum = self.passNum
        controller.issuedCountry = self.issuedCountry
        controller.phNum = self.phNum
        controller.mailId = self.mailId
        
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func singOutClicked(_ sender: Any) {
        
        sideViewControl.constant = -240
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "Login") as! LoginViewController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)

    }
    
    
    @IBAction func homeButtonClicked(_ sender: UIButton) {
        
        
        isClicked = !isClicked
        if isClicked
        {
            sideViewControl.constant = -240
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            sideViewControl.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    @IBAction func QRCodeClicked(_ sender: Any) {
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "first") as! QRViewController
        controller.text1 = "https://dhp-server.herokuapp.com/api/verifier/transaction/2ccc86adf6130d3bcaa8a3425f67216a34087cc8fa51dd11ab461d74c2f418f3/625f61a70a93881dc1d88408"
        controller.fname = self.fname
        controller.lname = self.lname
        controller.dob = self.dob
        controller.passNum = self.passNum
        controller.issuedCountry = self.issuedCountry
        controller.phNum = self.phNum
        controller.mailId = self.mailId
        
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    
    
    @IBAction func covidReportClicked(_ sender: UIButton) {
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "TestReport") as! CovidTestReportViewController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    @IBAction func navClicked(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name : "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "covidVaccination")
//        vc.modalPresentationStyle = .overFullScreen
//        present(vc, animated: true)
        
        
        if(sClicked == false)
        {
            personIconConstraint.constant = 210
        }
        
        isClicked = !isClicked
        if isClicked
        {
            sideViewControl.constant = -240
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            sideViewControl.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
  
    @IBAction func vaccinationButton(_ sender: Any) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "covidVaccination")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    
    
    
}
