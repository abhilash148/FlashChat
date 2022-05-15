//
//  MessageCellTableViewCell.swift
//  FlashChat
//
//  Created by Sai Abhilash Gudavalli on 15/05/22.
//

import UIKit

class MessageCellTableViewCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 6
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
