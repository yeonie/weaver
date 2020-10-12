//
//  SplashChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class SplashChoiceViewController: BaseViewController, UITextFieldDelegate {
    
    var slided = true
    var slideoff = false
    var slideoffForSignIn = true
    

    @IBOutlet weak var slideSignInView: UIView!
    @IBOutlet weak var slideSginUpView: UIView!
    @IBOutlet weak var giveMeRightRex: UILabel!
    @IBOutlet weak var giveMeRightRexSU: UILabel!
    //    로그인 텍스트 박스
    @IBOutlet weak var emailBox: UITextField!
    @IBOutlet weak var passwordBox: UITextField!
//    회원가입 텍스트 박스
    @IBOutlet weak var emailBoxSU: UITextField!
    @IBOutlet weak var nicknameBoxSU: UITextField!
    @IBOutlet weak var passwordBoxSU: UITextField!
    
    
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        navigationController!.pushViewController(OwnTypeChoiceViewController(), animated: true)
    }
    @IBAction func signUpBtnPressed(_ sender: Any) {
        navigationController!.pushViewController(OwnTypeChoiceViewController(), animated: true)

    }
    //    로그인형식
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        로그인part
        if isValidEmail(emailBox: emailBox.text!) && passwordBox.text!.count > 3 {
            loginBtn.isEnabled = true
            giveMeRightRex.isHidden = true
            
        } else {
            loginBtn.isEnabled = false
            giveMeRightRex.isHidden = false
        }
//        회원가입 part
        if isValidEmail(emailBox: emailBoxSU.text!) && (passwordBoxSU.text!.count > 3) && nicknameBoxSU.text!.count > 2 {
            signUpBtn.isEnabled = true
            giveMeRightRexSU.isHidden = true
            
        } else {
            signUpBtn.isEnabled = false
            giveMeRightRexSU.isHidden = false
        }
        
        print(emailBox.text!, passwordBox.text!, range.location, range.length)
        print(emailBoxSU.text!,nicknameBoxSU.text!, passwordBoxSU.text!, range.location, range.length) // 이 부분은 확인을 위해 만든 부분입니다.
        return true
    }
    

    
    func isValidEmail(emailBox: String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailBox)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let moviesVC = segue.destination as? BoardHomeViewController {
            if let text = emailBox.text {
                moviesVC.queryText = text
            }
        }
    }
    
    
    @IBAction func slideOffSginIn(_ sender: UIButton) {
        
        if slideoffForSignIn{
            UIView.animate(withDuration: 0.4, animations:({
                self.slideSginUpView.transform = CGAffineTransform(translationX: 0, y: -450)
                self.slideSginUpView.layer.shadowColor = UIColor.black.cgColor
                self.slideSginUpView.layer.shadowOffset = CGSize(width: 1, height: 2)
                self.slideSginUpView.layer.shadowOpacity = 1
                self.slideSginUpView.layer.shadowRadius = 100
            }))
        }
        else{
            UIView.animate(withDuration: 0.4, animations:({
                self.slideSginUpView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.slideSignInView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.slideSginUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.slideSginUpView.layer.shadowColor = UIColor.white.cgColor
            }))
        }
        slideoffForSignIn = !slideoffForSignIn
    }
    //슬라이드 내려뿌기
    @IBAction func slideOff(_ sender: UIButton) {
        UIView.animate(withDuration: 0.4, animations:({
            self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: 0)
                            }))
        UIView.animate(withDuration: 0.4, animations:({
            self.slideSginUpView.transform = CGAffineTransform(translationX: 0, y: 0)
            self.slideSignInView.layer.shadowColor = UIColor.black.cgColor
        }))
        self.slideSignInView.layer.shadowColor = UIColor.white.cgColor
        self.slideSginUpView.layer.shadowColor = UIColor.white.cgColor
        self.slideSignInView.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.slideSginUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        emailBox.delegate = self
        passwordBox.delegate = self
        emailBoxSU.delegate = self
        passwordBoxSU.delegate = self
        nicknameBoxSU.delegate = self
//        수정
//        self.loginBtn.isEnabled = false
//        self.signUpBtn.isEnabled = false

        
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        giveMeRightRex.isHidden = true
        giveMeRightRexSU.isHidden = true
        
        
        

    }
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController!.navigationBar.isHidden = true

    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: self, action: nil)
        self.navigationController?.navigationBar.tintColor = .black
        //네비게이션 바 그림자
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)

    }


    
    //가입하기
    @IBAction func SignUpBtn(_ sender: UIButton) {
        slided = !slided
        
        if slided{
            UIView.animate(withDuration: 0.3, animations:({
                
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.slideSignInView.layer.shadowOffset = CGSize(width: 0, height: 0)
                
                
                self.slideSginUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
                
                self.slideSignInView.layer.shadowColor = UIColor.white.cgColor
                
                self.slideSginUpView.layer.shadowColor = UIColor.white.cgColor
                
            }))
            //            self.backgroundColor.backgroundColor = UIColor.darkGray
            
            
        }
        else{
            UIView.animate(withDuration: 0.3, animations:({
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: -520)
                self.slideSignInView.layer.shadowColor = UIColor.black.cgColor
                self.slideSignInView.layer.shadowOffset = CGSize(width: 1, height: 2)
                self.slideSignInView.layer.shadowOpacity = 1
                self.slideSignInView.layer.shadowRadius = 100
//                self.mainFeedTableView.backgroundColor = UIColor.darkGray
            }))
//            self.backgroundColor.backgroundColor = UIColor.clear
            
        }
    }
    
    
}
