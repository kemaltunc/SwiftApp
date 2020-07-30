//
//  PostCell.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    
    static let identifier = "PostCell"
    
    @IBOutlet weak var completed: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        content.layer.cornerRadius = 18
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10))
    }
    
}
