//
//  MainDataManager.swift
//  ios
//
//  Created by litong on 13/08/2019.
//  Copyright © 2019 litong. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

class MainDataManager {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    func getTutorials(_ mainViewController: MainViewController) {        
        Alamofire
            //.request("\(self.appDelegate.baseUrl)/tutorials", method: .get)
            .request("\(self.appDelegate.baseUrl)/ads", method: .get)
            .validate()
            .responseObject(completionHandler: { (response: DataResponse<TutorialResponse>) in
                switch response.result {
                case .success(let tutorialResponse):
                    if tutorialResponse.code == 100 {
                        mainViewController.titleLabel.text = tutorialResponse.message
                    } else {
                        mainViewController.titleLabel.text = "튜토리얼 정보를 불러오는데 실패하였습니다."
                    }
                case .failure:
                    mainViewController.titleLabel.text = "서버와의 연결이 원활하지 않습니다."
                }
            })
    }

    func getLogin(_ loginViewController: SplashChoiceViewController){
        let username = loginViewController.emailBox.text!
        let password = loginViewController.passwordBox.text!
        let parameter = ["username": username, "password": password]
        Alamofire.request("\(self.appDelegate.baseUrl)/login", method:
            .post, parameters: parameter,encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<600).response { response in
                let headers = response.response?.allHeaderFields as? [String: Any]
                print(response.response?.statusCode)
                print(headers)
                if response.response?.statusCode == 200 {
                    guard let token = headers?["Authorization"] as? String else { return }
                    UserDefaults.standard.set(token, forKey: "LoginToken")
                    loginViewController.navigationController!.pushViewController(OwnTypeChoiceViewController(), animated: true)
                } else {
                    print("아이디/패스워드를 확인해주세요")
                    loginViewController.presentAlert(title: "", message: "loginResponse.message")
                }
        }
//        responseObject(completionHandler: { (response: DataResponse<LoginResponse>) in
//                // Authorization code
//                let headers = response.response?.allHeaderFields as? [String: Any]
//                switch response.result {
//                case .success(let loginResponse):
//                    if loginResponse.code == 200{
//                        print("로그인 성공")
//                        //login 했을 때 토큰을 저장
//                        guard let token = headers?["Authorization"] else { return }
//                        UserDefaults.standard.set(token, forKey: "LoginToken")
//                        loginViewController.navigationController!.pushViewController(OwnTypeChoiceViewController(), animated: true)
//
//                    }else if loginResponse.code == 403{
//                        print("아이디/패스워드를 확인해주세요")
//
//                        loginViewController.presentAlert(title: "", message: loginResponse.message)
//                    }
//                    print(response)
//                    break
//                case .failure:
//                    print(response)
//
//                }
//            })
    }
    
    
    
//    func getRegistrationEmail(_ RegistrationEmailViewController: RegistrationEmailViewController){
//        let email = RegistrationEmailViewController.emailBox.text!
//        let parameter = ["reqType": "0", "email": email]
//        Alamofire.request("\(self.appDelegate.baseUrl)/user", method: .post, parameters: parameter,encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200..<600).responseObject(completionHandler: { (response: DataResponse<RegistrationEmailResponse>) in
//            switch response.result {
//            case .success(let SignEmailResponse):
//                RegistrationEmailViewController.presentAlert(title: "", message: SignEmailResponse.message)
//                print(response)
//                break
//            case .failure:
//                print(response)
//                self.newEmail = email
//                RegistrationEmailViewController.navigationController!.pushViewController(RegistrationPWViewController(), animated: true)
//                //loginViewController.presentAlert(title: "", message: "서버와의 연결이 원활하지 않습니다.")
//            }
//        })
    }
    
func PostSignUp(_ SignUpViewController: SplashChoiceViewController){
//    let 
}
