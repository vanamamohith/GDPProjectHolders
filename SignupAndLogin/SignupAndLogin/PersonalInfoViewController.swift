//
//  PersonalInfoViewController.swift
//  SignupAndLogin
//
//  Created by student on 3/25/22.
//

import UIKit

class PersonalInfoViewController: UIViewController {
    
    var sClicked = true
    var isClicked = true
    
    @IBOutlet weak var sideBarConstarint: NSLayoutConstraint!
    

    @IBOutlet weak var personConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideBarConstarint.constant = -240
        personConstraint.constant = 210

    }
    
    @IBAction func sideMenuClicked(_ sender: UIButton) {
        if(sClicked == false)
        {
            personConstraint.constant = 210
        }
        
        isClicked = !isClicked
        if isClicked
        {
            sideBarConstarint.constant = -240
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            sideBarConstarint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    @IBAction func homeButtonClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "home")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func QRCodeClicked(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "first") as! QRViewController
        controller.text1 = "https://arxiv.org/pdf/2005.08922.pdf"
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func covidTestClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TestReport")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    
    
    @IBAction func personIconClicked(_ sender: UIButton) {
        
        if(isClicked == false)
        {
            sideBarConstarint.constant = -240
        }
        
        sClicked = !sClicked
        if sClicked
        {
            personConstraint.constant = 210
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            personConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    @IBAction func personalInfoClicked(_ sender: UIButton) {
        sClicked = !sClicked
        if sClicked
        {
            personConstraint.constant = 210
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            personConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func changePasswordClicked(_ sender: UIButton) {
        
        sideBarConstarint.constant = -240
        
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "changePassword")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    
    
    @IBAction func signOutClicked(_ sender: UIButton) {
        sideBarConstarint.constant = -240
        
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    
}
