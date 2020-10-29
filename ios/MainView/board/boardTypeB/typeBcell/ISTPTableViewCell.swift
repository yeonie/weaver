//
//  ISTPTableViewCell.swift
//  ios
//
//  Created by 이동연 on 29/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class ISTPTableViewCell: UITableViewCell {

    @IBOutlet weak var contentTitle: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var totalContent: UILabel!
    @IBOutlet weak var likeNumb: UILabel!
    @IBOutlet weak var replyNumb: UILabel!
    
    
    @IBAction func replyBtnPressed(_ sender: UIButton) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
