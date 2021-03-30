//
//  SplashChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class SplashChoiceViewController: BaseViewController, UITextFieldDelegate {
    
    var slidedS = true
    var slidedL = true
    var slideoff = false
    var slideoffForSignIn = true
    var ShowHide = true

    @IBOutlet weak var slideLoginView: UIView!
    @IBOutlet weak var slideSignUpView: UIView!
    @IBOutlet weak var giveMeRightRex: UILabel!
    @IBOutlet weak var giveMeRightRexSU: UILabel!
    //    로그인 텍스트 박스
    @IBOutlet weak var emailBox: UITextField!
    @IBOutlet weak var passwordBox: UITextField!
    //    회원가입 텍스트 박스
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var nicknameBoxSU: UITextField!
    @IBOutlet weak var passwordBoxSU: UITextField!
    
    
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
//    비밀번호 보기
    @IBAction func PwShowHide(_ sender: UIButton) {
        if ShowHide{
            passwordBoxSU.isSecureTextEntry = false
        }
        else{
            passwordBoxSU.isSecureTextEntry = true
        }
        ShowHide = !ShowHide
    }
    
    
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
//        MainDataManager().getLogin(self)
        navigationController?.pushViewController(MainTabbarViewController(), animated: true)
    }
   
    @IBAction func signUpBtnPressed(_ sender: Any) {
        let ownTypeChoiceViewController = OwnTypeChoiceViewController()
        ownTypeChoiceViewController.splashChoiceViewController = self
        navigationController?.pushViewController(ownTypeChoiceViewController, animated: true)
    }
    
        //프로필 사진 박기
    @IBAction func profileBtnPressed(_ sender: UIButton) {
        let alert =  UIAlertController(title: "원하는 타이틀", message: "원하는 메세지", preferredStyle: .actionSheet)
        let library =  UIAlertAction(title: "사진앨범", style: .default)
        {
            (action) in self.openLibrary()
        }
        let camera =  UIAlertAction(title: "카메라", style: .default)
        {
            (action) in self.openCamera()
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    //    로그인 Regex
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        로그인part
        if isValidEmail(emailBox: emailBox.text!) && passwordBox.text!.count > 3 {
            loginBtn.isEnabled = true
            giveMeRightRex.isHidden = true
            
        } else {
//            loginBtn.isEnabled = false
            loginBtn.isEnabled = true
            giveMeRightRex.isHidden = false
        }
//        회원가입 part
        if isValidEmail(emailBox: username.text!) && (passwordBoxSU.text!.count > 3) && nicknameBoxSU.text!.count > 2 {
            signUpBtn.isEnabled = true
            giveMeRightRexSU.isHidden = true
            
        } else {
//            signUpBtn.isEnabled = false
            signUpBtn.isEnabled = true
            giveMeRightRexSU.isHidden = false
        }
        print(emailBox.text!, passwordBox.text!, range.location, range.length)
        print(username.text!,nicknameBoxSU.text!, passwordBoxSU.text!, range.location, range.length)
        return true
    }
    

    
    func isValidEmail(emailBox: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailBox)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let moviesVC = segue.destination as? BoardHomeViewController {
            if let text = emailBox.text {
                moviesVC.queryText = text
            }
        }
    }
    
    
    //슬라이드 내려뿌기
    @IBAction func slideOff(_ sender: UIButton) {
        UIView.animate(withDuration: 0.4, animations:({
            self.slideSignUpView.transform = CGAffineTransform(translationX: 0, y: 0)
            self.slideSignUpView.layer.shadowColor = UIColor.black.cgColor
        }))
        
        UIView.animate(withDuration: 0.4, animations:({
            self.slideLoginView.transform = CGAffineTransform(translationX: 0, y: 0)
            self.slideLoginView.layer.shadowColor = UIColor.black.cgColor
        }))
        self.slideSignUpView.layer.shadowColor = UIColor.white.cgColor
        self.slideLoginView.layer.shadowColor = UIColor.white.cgColor
        self.slideSignUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.slideLoginView.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailBox.delegate = self
        passwordBox.delegate = self
        username.delegate = self
        passwordBoxSU.delegate = self
        nicknameBoxSU.delegate = self
        
        let password: String = passwordBoxSU.text!
        let nickname: String = nicknameBoxSU.text!
//        수정
//        self.loginBtn.isEnabled = false
//        self.signUpBtn.isEnabled = false

        
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        giveMeRightRex.isHidden = true
        giveMeRightRexSU.isHidden = true
        loginBtn.isEnabled = true
        
        
        //keyboard UI
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisappear(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)

    }
//    private func addKeyboardNotification() {
//        NotificationCenter.default.addObserver(
//          self,
//          selector: #selector(keyboardWillShow),
//          name: UIResponder.keyboardWillShowNotification,
//          object: nil
//        )
//
//        NotificationCenter.default.addObserver(
//          self,
//          selector: #selector(keyboardWillHide),
//          name: UIResponder.keyboardWillHideNotification,
//          object: nil
//        )
//      }
    
    //keyboard UI 가리기/보여주기
    @objc private func keyboardWillAppear(_ notification: Notification) {
      if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
        let keybaordRectangle = keyboardFrame.cgRectValue
        let keyboardHeight = keybaordRectangle.height
        self.view.frame.origin.y = -keyboardHeight
      }
    }
      
    @objc private func keyboardWillDisappear(_ notification: Notification) {
      if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
        let keybaordRectangle = keyboardFrame.cgRectValue
        let keyboardHeight = keybaordRectangle.height
        self.view.frame.origin.y = 0
      }
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

    //로그인
    @IBAction func LoginBtn(_ sender: UIButton) {
        slidedL = !slidedL
        if slidedL{
            UIView.animate(withDuration: 0.3, animations:({
                
                self.slideLoginView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.slideLoginView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.slideLoginView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.slideLoginView.layer.shadowColor = UIColor.white.cgColor
                self.slideLoginView.layer.shadowColor = UIColor.white.cgColor
        }))
        }
        else{
            UIView.animate(withDuration: 0.3, animations:({
                self.slideLoginView.transform = CGAffineTransform(translationX: 0, y: -450)
                self.slideLoginView.layer.shadowColor = UIColor.black.cgColor
                self.slideLoginView.layer.shadowOffset = CGSize(width: 1, height: 2)
                self.slideLoginView.layer.shadowOpacity = 1
                self.slideLoginView.layer.shadowRadius = 100
//                self.mainFeedTableView.backgroundColor = UIColor.darkGray
            }))
        }
            
        
    }
    
    //가입하기
    @IBAction func SignUpBtn(_ sender: UIButton) {
        slidedS = !slidedS
        
        if slidedS{
            UIView.animate(withDuration: 0.3, animations:({
                
                self.slideSignUpView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.slideSignUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.slideSignUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.slideSignUpView.layer.shadowColor = UIColor.white.cgColor
                self.slideSignUpView.layer.shadowColor = UIColor.white.cgColor
            }))
        }
        else{
            UIView.animate(withDuration: 0.3, animations:({
                self.slideSignUpView.transform = CGAffineTransform(translationX: 0, y: -520)
                self.slideSignUpView.layer.shadowColor = UIColor.black.cgColor
                self.slideSignUpView.layer.shadowOffset = CGSize(width: 1, height: 2)
                self.slideSignUpView.layer.shadowOpacity = 1
                self.slideSignUpView.layer.shadowRadius = 100
            }))
        }
    }
    
    
}
