//
//  Refistration.swift
//  Medical
//
//  Created by Админ on 06.04.2023.
//

import Foundation
import SwiftyJSON
import Alamofire

let ApiURL = "https://medic.madskill.ru/"
let ApiSendCode = ApiURL + "api/sendCode"
let ApiSignIn = ApiURL + "api/signin"
public var token = 00000
public var LoginPassed = false
public var RegistrationPassed = false



func login (emaill: String, completionHandler: ((_ message: String) -> Void)? = nil){

    let LoginParams: [String: String] = [
        "email": emaill
    ]

    AF.request(ApiSendCode, method: .post, parameters: LoginParams, encoder: URLEncodedFormParameterEncoder.default).validate().responseJSON
    {response in
        switch response.result {
        case .success(let value):
            let json = JSON(value)
            token = json["token"].int ?? 0000
            if token == json["token"].int {
                print(token)
                print(":)")
                LoginPassed = true
            }
        case .failure(let error):
            print(error)
            print(":(")
            LoginPassed = false
        }
    }
}


