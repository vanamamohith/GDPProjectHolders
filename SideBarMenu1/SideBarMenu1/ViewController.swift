//
//  ViewController.swift
//  SideBarMenu1
//
//  Created by student on 4/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var isClicked = true
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenuConstraint.constant = -240
        
        
    }
    
    
    
    @IBAction func sideButtonClick(_ sender: Any) {
        
        if isClicked{
            sideMenuConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            
        }
        else{
            sideMenuConstraint.constant = -240
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            
        }
        
        isClicked = !isClicked
    }
    
    
}

