//
//  ViewController.swift
//  Medical
//
//  Created by Админ on 05.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var EmailText: UITextField!
    
    @IBAction func signin(_ sender: Any) {
            var emailValue: String!
            emailValue = String(EmailText.text!)
            print(String(emailValue).self)
            login(emaill: emailValue)
    }
    
    @IBOutlet weak var basket: UIView!
    @IBOutlet weak var add1: UIButton!
    @IBAction func add(_ sender: UIButton) {
        weak var add: UIButton? = add1
        weak var basket: UIView? = basket
        
        add?.layer.borderColor = UIColor.blue.cgColor
        add?.layer.borderWidth = 1
        add?.backgroundColor = UIColor.white
        
        basket?.isHidden = false
        
    }
    
    
//    @IBAction func auth(_ sender: UIButton) {
//        guard let url = URL(string: "https://medic.madskill.ru/api/sendCode") else { return }
//        var email: String!
//        email = String(EmailText.text!)
//
//        let parameters = [
//            "email": "toporik04.05@mail.ru"
//        ]
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
//        request.httpBody = httpBody
//
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//
//            guard let data = data else { return }
//            do {
//                let json = try JSONSerialization.jsonObject(with: data, options: [])
//                print(json)
//            } catch {
//                print(error)
//            }
//        }.resume()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
                
        
    }


