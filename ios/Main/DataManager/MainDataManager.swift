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

//    로그인
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
                    let window = UIApplication.shared.windows.first { $0.isKeyWindow }
                    window?.rootViewController = MainTabbarViewController()
                    loginViewController.navigationController!.pushViewController(MainTabbarViewController(), animated: true)
                    
                } else {
                    print("아이디/패스워드를 확인해주세요")
                    loginViewController.presentAlert(title: "", message: "아이디 / 패스워드를 확인해주세요.")
                }
        }
    }
    
//    회원가입
    func sginIn(fromVC vc: SplashChoiceViewController, email: String, password: String, nickname: String){
        let headers = ["Content-Type": "application/json"]
        let parameters: Parameters = [
            "email": "\(email)",
            "password": "\(password)",
            "nickname":"\(nickname)"]
        Alamofire.request("\(self.appDelegate.baseUrl)/api/user/signup", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
        }
    
    func signIn1(fromSpVC vc: SplashChoiceViewController, username: String, password: String, nickname: String, fromOwnVC vc2: OwnTypeChoiceViewController, personality: [String]){
        let headers = ["Content-Type": "application/json"]
        
        let parameters: Parameters = [
            "username": "\(username)",
            "password": "\(password)",
            "nickname":"\(nickname)",
            "personality":"\(personality[0])"]
        
        Alamofire.request("\(self.appDelegate.baseUrl)/api/user/signup", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
            .validate(statusCode: 200..<600)
            .response {response in
//                print(response.response?.statusCode)
//                print(response.response?.allHeaderFields)
//                print(response.response?.accessibilityContainerType.rawValue)
//                print(response.response?.copy())
//                if let data = response.data {
//                    let json = String(data: data, encoding: String.Encoding.utf8)
//                    print("Failure Response: \(json)")
//                }
                if response.response?.statusCode == 200 {
                    let window = UIApplication.shared.windows.first { $0.isKeyWindow }
                    window?.rootViewController = MainTabbarViewController()
                    vc.navigationController!.pushViewController(MainTabbarViewController(), animated: true)
                    
                } else {
                    print("아이디/패스워드를 확인해주세요")
                    vc.navigationController?.pushViewController(SplashChoiceViewController(), animated: true)
                    vc.presentAlert(title: "", message: "아이디 / 패스워드를 확인해주세요.")
                    
                }
        }
    }
    
    func putPersonality(fromVC vc: OwnTypeChoiceViewController, personality: String){
        let headers = ["Content-Type": "application/json"]
        let parameter: Parameters = [
            "personality": "\(personality)"]
        Alamofire.request("\(self.appDelegate.baseUrl)/api/user/signup", method: .post, parameters: parameter, encoding: JSONEncoding.default, headers: headers)
            .validate(statusCode: 200..<600).response{response in
                if response.response?.statusCode == 200 {
                    let window = UIApplication.shared.windows.first { $0.isKeyWindow }
                    window?.rootViewController = MainTabbarViewController()
                    vc.navigationController!.pushViewController(MainTabbarViewController(), animated: true)
                    
                } else {
                    print("아이디/패스워드를 확인해주세요")
                    vc.presentAlert(title: "", message: "아이디 / 패스워드를 확인해주세요.")
                }

        }
        
    }
    
//    게시물 등록
    func CreatePost(_ boardViewController: putFeedViewController){
        let title = boardViewController.titles.text!
        let content = boardViewController.content.text!
//        let category = boardViewController
        let parameter = ["title": title, "content": content]
        let headers = ["Content-Type": "application/json"]
        Alamofire.request("\(self.appDelegate.baseUrl)/community/board", method:
            .post, parameters: parameter,encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<600).response { response in
                let headers = response.response?.allHeaderFields as? [String: Any]
                print(response.response?.statusCode)
                print(headers)
                if response.response?.statusCode == 200 {
                    guard let token = headers?["Authorization"] as? String else { return }
                    UserDefaults.standard.set(token, forKey: "postToken")
                    let window = UIApplication.shared.windows.first { $0.isKeyWindow }
                    window?.rootViewController = MainTabbarViewController()
                    boardViewController.navigationController!.pushViewController(boardCategoryViewController(), animated: true)
                    
                } else {
                    print("Oops sry..!")
                    boardViewController.presentAlert(title: "", message: "제대로 입력해주세요.")
                }
        }
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
