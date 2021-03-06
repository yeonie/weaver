//
//  OwnTypeChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class OwnTypeChoiceViewController: BaseViewController {
    
    var splashChoiceViewController: SplashChoiceViewController? = nil
    
    var personality = ["Never Selected"]
    
    @IBOutlet weak var ISTJ: UIButton!
    @IBOutlet weak var ISFJ: UIButton!
    @IBOutlet weak var INFJ: UIButton!
    @IBOutlet weak var INTJ: UIButton!
    @IBOutlet weak var ISTP: UIButton!
    @IBOutlet weak var ISFP: UIButton!
    @IBOutlet weak var INFP: UIButton!
    @IBOutlet weak var INTP: UIButton!
    @IBOutlet weak var ESTP: UIButton!
    @IBOutlet weak var ESFP: UIButton!
    @IBOutlet weak var ENFP: UIButton!
    @IBOutlet weak var ENTP: UIButton!
    @IBOutlet weak var ESTJ: UIButton!
    @IBOutlet weak var ESFJ: UIButton!
    @IBOutlet weak var ENFJ: UIButton!
    @IBOutlet weak var ENTJ: UIButton!
    
    @IBOutlet weak var typeComment: UILabel!
    
    
    
    
    
    @IBAction func ISTJ(_ sender: UIButton) {
        personality = ["ISTJ"]
        if let image = UIImage(named: "istjOn"){
            ISTJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            typeComment.text = "청렴결백한 논리주의자!"
        }
    }
    
    @IBAction func ISFJ(_ sender: Any) {
        if let image = UIImage(named: "isfjOn"){
            personality = ["ISFJ"]
            ISFJ.setImage(image, for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "용감한 수호자?"

        }
    }
    
    @IBAction func INFJ(_ sender: Any) {
        personality = ["INFJ"]
        if let image = UIImage(named: "infjOn"){
            INFJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "선의의 옹호자!"

        }
    }
    
    @IBAction func INTJ(_ sender: Any) {
        personality = ["INTJ"]
        if let image = UIImage(named: "intjOn"){
            INTJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "용의주도한 전략가!"

        }
    }
    @IBAction func ISTP(_ sender: Any) {
        personality = ["ISTP"]
        if let image = UIImage(named: "istpOn"){
            ISTP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            
            typeComment.text = "만능 재주꾼!"
        }
    }
    @IBAction func ISFP(_ sender: Any) {
        personality = ["ISFP"]
        if let image = UIImage(named: "isfpOn"){
            ISFP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

            typeComment.text = "호기심 많은 예술가!"
        }
    }
    @IBAction func INFP(_ sender: Any) {
        personality = ["INFP"]
        if let image = UIImage(named: "infpOn"){
            INFP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "열정적인 중재자!"

        }
    }
    @IBAction func INTP(_ sender: Any) {
        personality = ["INTP"]
        if let image = UIImage(named: "intpOn"){
            INTP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "논리적인 사색가!"
        }
    }
    @IBAction func ESTP(_ sender: Any) {
        personality = ["ESTP"]
        if let image = UIImage(named: "estpOn"){
            ESTP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "모함을 즐기는 사업가!"

        }
    }
    @IBAction func ESFP(_ sender: Any) {
        personality = ["ESFP"]
        if let image = UIImage(named: "esfpOn"){
            ESFP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "자유로운 영혼의 연예인!?"

        }
    }
    @IBAction func ENFP(_ sender: Any) {
        personality = ["ENFP"]
        if let image = UIImage(named: "enfpOn"){
            ENFP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "재기발랄한 활동가!"

        }
    }
    @IBAction func ENTP(_ sender: Any) {
        personality = ["ENTP"]
        if let image = UIImage(named: "entpOn"){
            ENTP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "뜨거운 논쟁을 즐기는 변론가!"

        }
    }
    @IBAction func ESTJ(_ sender: Any) {
        personality = ["ESTJ"]
        if let image = UIImage(named: "estjOn"){
            ESTJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "엄격한 관리자..!"

        }
    }
    @IBAction func ESFJ(_ sender: Any) {
        personality = ["ESFJ"]
        if let image = UIImage(named: "esfjOn"){
            ESFJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "사교적인 외교관!"

        }
    }
    @IBAction func ENFJ(_ sender: Any) {
        personality = ["ENFJ"]
        if let image = UIImage(named: "enfjOn"){
            ENFJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "정의로운 사회운동가!"

        }
    }
    @IBAction func ENTJ(_ sender: Any) {
        personality = ["ENTJ"]
        if let image = UIImage(named: "entjOn"){
            ENTJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)
            typeComment.text = "대담한 통솔자!"

        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        typeComment.text = "ISTJ"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }

    @IBOutlet weak var expanation: UILabel!
    
    @IBAction func skipBtnPressed(_ sender: UIButton) {
        
//        let SignInView = SplashChoiceViewController(emailBoxSU.text, passwordBoxSU.text, nicknameBoxSU.text)
        guard let splashChoiceViewController = self.splashChoiceViewController else { return }
        let username = splashChoiceViewController.username.text!
        let password = splashChoiceViewController.passwordBoxSU.text!
        let nickname = splashChoiceViewController.nicknameBoxSU.text!
        let type = self.personality
        MainDataManager().signUp(fromSpVC: splashChoiceViewController, username: username, password: password, nickname: nickname, fromOwnVC: self, personality: type)
        //        self.navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "dismissBtn"), style: nil, target: nil, action: nil)
        
        
        
    }
    

}
