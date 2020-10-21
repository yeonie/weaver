//
//  matchingMessageTableViewCell.swift
//  ios
//
//  Created by 이동연 on 19/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class matchingMessageTableViewCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNickname: UILabel!
    @IBOutlet weak var userchat: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userImage.sizeToFit()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
