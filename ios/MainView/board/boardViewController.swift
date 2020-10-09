//
//  boardViewController.swift
//  ios
//
//  Created by 이동연 on 14/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

var images = ["banner1","boardHomeBackground","banner1", "banner1"]


class boardViewController: BaseViewController {
    
    @IBOutlet weak var boardSearchBar: UISearchBar!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    @IBAction func pageChanged(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
        
    }
    
    var searchBar = false
    
    
    
    lazy var rightButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "boardSearchIc"), style: .plain, target: self, action: #selector(buttonPressed(_:)))
        self.navigationController?.navigationBar.tintColor = .black
        return button
        
    }()

    @objc private func buttonPressed(_ sender: Any) {
        searchBar = !searchBar
        
        if searchBar{
            
            self.boardSearchBar.isHidden = false
            
        }
        else{
            
            self.boardSearchBar.isHidden = true
            
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.rightButton
        self.boardSearchBar.isHidden = true
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.white
        pageControl.currentPageIndicatorTintColor = UIColor.lightGray
        imgView.image = UIImage(named: images[0])
        
        
        }
    


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.navigationItem.title = "게시판"
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
//        UINavigationBar.appearance().barTintColor = UIColor.white
//        self.navigationController?.navigationBar.isTranslucent = false
        
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    @IBAction func estjBoardPressed(_ sender: UIButton) {
        navigationController?.pushViewController(boardCategoryViewController(), animated: true)
    }
    
    
    
    
}

