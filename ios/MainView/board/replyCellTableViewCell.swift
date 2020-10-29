//
//  replyCellTableViewCell.swift
//  ios
//
//  Created by 이동연 on 29/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class replyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNickname: UILabel!
    @IBOutlet weak var replyContents: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
