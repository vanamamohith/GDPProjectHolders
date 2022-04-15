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
    
//    var scrollView: UIScrollView!
//    var mainView : UIView!
    
    @IBOutlet weak var sideViewControl: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        scrollView?.contentSize = (CGSize(width: mainView.frame.size.width, height: mainView.frame.size.height))
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
        
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PersonalInfo")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    
    
    @IBAction func changePasswordClicked(_ sender: Any) {
        
        sideViewControl.constant = -240
        
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "changePassword")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    
    
    @IBAction func singOutClicked(_ sender: Any) {
        
        sideViewControl.constant = -240
        
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
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
        controller.text1 = "Hello"
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    
    
    @IBAction func covidReportClicked(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TestReport")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
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
