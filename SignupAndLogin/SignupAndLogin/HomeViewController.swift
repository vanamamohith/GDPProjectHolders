//
//  HomeViewController.swift
//  SignupAndLogin
//
//  Created by student on 3/18/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func iconClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    
    
    @IBAction func navClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "covidVaccination")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
  
    @IBAction func vaccinationButton(_ sender: Any) {
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "covidVaccination")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    
}
