//
//  UserCell.swift
//  GitDemo
//
//  Created by Test on 21/11/20.
//  Copyright © 2020 Test. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    var viewModel = GithubUserViewModel()

    @IBOutlet weak var UserImageView: UIImageView!
    @IBOutlet weak var repoLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var userView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configCell()
        // Initialization code
    }
    
    private func configCell() {
        self.UserImageView.layer.cornerRadius = self.UserImageView.frame.size.width / 2
           self.UserImageView.clipsToBounds = true
        userView.layer.borderWidth = 0.5
        userView.layer.borderColor = UIColor.lightGray.cgColor
        userView.layer.cornerRadius = 5
    }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
