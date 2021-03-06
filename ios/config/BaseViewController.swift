//
//  BaseViewController.swift
//  ios
//
//  Created by litong on 06/08/2019.
//  Copyright © 2019 litong. All rights reserved.
//

import UIKit
import SnapKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    // MARK: 인디케이터 표시
    func showIndicator() {
        CustomIndicatorView.shared.show()
    }
    
    // MARK: 인디케이터 숨김
    func dismissIndicator() {
        CustomIndicatorView.shared.dismiss()
    }
    
    //카메라 툴
    let picker = UIImagePickerController()
    func openLibrary(){
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    
    func openCamera(){
        picker.sourceType = .camera
        present(picker, animated: false, completion: nil)
    }
}
