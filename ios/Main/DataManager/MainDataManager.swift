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
        Alamofire.request("\(self.appDelegate.baseUrl)/jwt", method:
            .post, parameters: parameter,encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<600).responseObject(completionHandler: { (response: DataResponse<LoginResponse>) in
                switch response.result {
                case .success(let loginResponse):
                    if loginResponse.code == 101{
                        print("dddddddddddddddddddd")
                        loginViewController.navigationController!.pushViewController(OwnTypeChoiceViewController(), animated: true)
                        
                    }else if loginResponse.code == 506{
                        print("dddddddddddddddddddd")
                        
                        loginViewController.presentAlert(title: "", message: loginResponse.message)
                    }
                    print(response)
                    break
                case .failure:
                    print(response)
                    
                }
            })
    }
}
