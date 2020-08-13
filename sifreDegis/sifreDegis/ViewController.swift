//
//  ViewController.swift
//  sifreDegis
//
//  Created by Furkan Hanci on 12.08.2020.
//  Copyright © 2020 Furkan Hanci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   let button = UIButton.init(type: .system)
     let sifreTextField = UITextField(frame: CGRect(x: 55 , y: 250, width: 300, height: 40))
    let sifreTextField2 = UITextField(frame: CGRect(x: 50  , y: 130, width: 300, height: 40))
    override func viewDidLoad() {
        super.viewDidLoad()
      
        button.frame = CGRect(x: 110, y: 410, width: 200.0, height: 50)
        button.setTitle("Doğrulama Kodu Gönder", for: .normal)
        button.layer.borderWidth = 5.0
        //button.layer.borderWidth = 5.0
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = UIColor.yellow
        button.titleLabel?.textColor = UIColor.black
        button.tintColor = UIColor.black
        button.layer.cornerRadius = 15.0
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        self.view.addSubview(button)
        
       
          
        sifreTextField.placeholder = "Kayıtlı E-Mailiniz..."
       // sifreTextField.isSecureTextEntry = true
        sifreTextField.borderStyle = UITextField.BorderStyle.line
        sifreTextField.backgroundColor = UIColor.white
        sifreTextField.textColor = UIColor.black
        sifreTextField.layer.cornerRadius = 500
        sifreTextField.autocapitalizationType = .none
        self.view.addSubview(sifreTextField)
        
    }
    
    @objc func buttonClicked(_: UIButton) {
        
        if sifreTextField.text == "" {
            let alert = UIAlertController(title: "Hata" , message: "E-Mail Kısmı Boş Bırakılamaz!!", preferredStyle: UIAlertController.Style.alert)
            let okbutton = UIAlertAction(title: "Tamam" , style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okbutton)
            self.present(alert , animated: true , completion: nil)
        
        
        } else {
            let alert3 = UIAlertController(title: "Tebrikler 🥳 " , message: "Şifre Doğrulama Linkiniz Kayıtlı E-Mail inize Gönderildi", preferredStyle: UIAlertController.Style.alert)
                                 let okbutton3 = UIAlertAction(title: "Teşekkürler " , style: UIAlertAction.Style.default, handler: nil)
                      alert3.addAction(okbutton3)
                      self.present(alert3 , animated: true , completion: nil)
            
            button.isEnabled = false
        }
            
        
      
    }
    
    
   


}

