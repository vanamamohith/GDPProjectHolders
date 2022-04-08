//
//  ViewController.swift
//  QRCodeGenerating
//
//  Created by student on 3/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func button(_ sender: Any) {
        
        if let myString = myTextField.text {
            imgView.image = generateQRCode(from: myTextField.text!)
        }
        else{
            imgView.image = generateQRCode(from: "Let learn")
        }
  
        
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


}

