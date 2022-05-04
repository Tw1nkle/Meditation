//
//  ViewController.swift
//  Meditation
//
//  Created by Дарья Федяшова on 04.05.2022.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    // Авторизация пользователя
    @IBAction func SignInAction(_ sender: UIButton) {
        
        // API авторизация
        let url = "http://mskko2021.mad.hakta.pro/api/user/login"
        
        guard inputEmail.text?.isEmpty == false && inputPassword.text?.isEmpty == false else { return showAlert(message: "У вас есть пустые поля") }
        
    }
    
    // Уведомление об ошибке
    func showAlert(message: String) {

        let alert = UIAlertController(title: "Уведомление", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Окей", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
}

