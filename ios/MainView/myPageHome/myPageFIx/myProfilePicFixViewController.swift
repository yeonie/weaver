//
//  myProfilePicFixViewController.swift
//  ios
//
//  Created by 이동연 on 24/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class myProfilePicFixViewController: BaseViewController {
    
    let picker = UIImagePickerController()

    @IBOutlet weak var mainImageBtn: UIButton!
    @IBOutlet weak var subImageBtn: UIButton!
    @IBOutlet weak var subImageBtn2: UIButton!
    @IBOutlet weak var subImageBtn3: UIButton!
    @IBOutlet weak var subImageBtn4: UIButton!
    
    
    func openLibrary(){
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    func openCamera(){
        picker.sourceType = .camera
        present(picker, animated: false, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainImageBtn.layer.cornerRadius = 15
        self.subImageBtn.layer.cornerRadius = 20
        self.subImageBtn2.layer.cornerRadius = 20
        self.subImageBtn3.layer.cornerRadius = 20
        self.subImageBtn4.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "내 갤러리"
        
        //        self.navigationController?.navigationBar.backgroundColor = UIColor.init(red: 30/255, green: 15/255, blue: 0/255, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icExit")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icExit")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
    }

    @IBAction func mainPicFixBtnPressed(_ sender: UIButton) {
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
    @IBAction func subPic1FixBtnPressed(_ sender: UIButton) {
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
    @IBAction func subPic2FixBtnPressed(_ sender: UIButton) {
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
    @IBAction func subPic3FixBtnPressed(_ sender: UIButton) {
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
    @IBAction func subPic4FixBtnPressed(_ sender: UIButton) {
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
    
    
}
