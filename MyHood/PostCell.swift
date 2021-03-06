//
//  PostCell.swift
//  MyHood
//
//  Created by Wayne Renbjor on 10/29/15.
//  Copyright © 2015 WCRStudios. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
    }
    
    func configureCell(post: Post) {
        
        postDesc.text = post.description
        postTitle.text = post.title
        postImage.image = DataService.instance.imageForPath(post.imagePath)
        
    }
    
}
