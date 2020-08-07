//
//  MessageCell.swift
//  Somatt
//
//  Created by Klaus Chin on 2020/8/7.
//  Copyright © 2020 Somatt. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {


    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
