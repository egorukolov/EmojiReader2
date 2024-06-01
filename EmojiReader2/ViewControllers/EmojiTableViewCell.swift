//
//  EmojiTableViewCell.swift
//  EmojiReader2
//
//  Created by Egor Ukolov on 30.05.2024.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set (object: Emoji) {
        
        self.emojiLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.description
        
    }
    
}
