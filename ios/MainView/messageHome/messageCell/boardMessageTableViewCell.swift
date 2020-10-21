//
//  boardMessageTableViewCell.swift
//  ios
//
//  Created by 이동연 on 21/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class boardMessageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageFB: UIImageView!
    @IBOutlet weak var userNicknameFB: UILabel!
    @IBOutlet weak var userChatFB: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
