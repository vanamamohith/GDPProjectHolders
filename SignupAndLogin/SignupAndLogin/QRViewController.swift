//
//  QRViewController.swift
//  SignupAndLogin
//
//  Created by student on 4/14/22.
//

import UIKit

class QRViewController: UIViewController {
    
    var text1 =  " "
    var isClicked = true
    
    @IBOutlet weak var sideViewConstraint: NSLayoutConstraint!
    
    
    @IBOutlet weak var QRImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideViewConstraint.constant = -240

        if text1 != " " {
            QRImg.image = generateQRCode(from: text1)
        }
        else{
            QRImg.image = generateQRCode(from: "Let learn")
        }
    }
    
    
    @IBAction func homeClicked(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "home") as! HomeViewController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func QRButtonClicked(_ sender: UIButton) {
        isClicked = !isClicked
        if isClicked
        {
            sideViewConstraint.constant = -240
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            sideViewConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func covidReportClicked(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name : "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TestReport")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    
    
    func generateQRCode(from string:String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        if let filter = CIFilter(name: "CIQRCodeGenerator"){
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            if let output = filter.outputImage?.transformed(by: transform){
                return UIImage(ciImage: output)
            }
        }
        return nil
    }
    
    
    @IBAction func sideBarClicked(_ sender: UIButton) {
        
        isClicked = !isClicked
        if isClicked
        {
            sideViewConstraint.constant = -240
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else{
            sideViewConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
    }
    
    

}
