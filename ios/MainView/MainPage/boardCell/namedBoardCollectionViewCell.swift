//
//  namedBoardCollectionViewCell.swift
//  ios
//
//  Created by 이동연 on 19/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class namedBoardCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var namedBoardTitle: UILabel!
    @IBOutlet weak var namedBoardContent: UILabel!
    @IBOutlet weak var howAboutMyTypeImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        view.layer.cornerRadius = 25
        
//        view.layer.backgroundColor = UIColor.clear.cgColor
//        view.layer.shadowColor = UIColor.black.cgColor
//        view.layer.shadowOffset = CGSize(width: 0, height: -8)
//        view.layer.shadowOpacity = 1
//        view.layer.shadowRadius = 10
        
    }

}
