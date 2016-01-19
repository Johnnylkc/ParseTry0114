//
//  MainBigCell.swift
//  ParseTry0114
//
//  Created by 劉坤昶 on 2016/1/15.
//  Copyright © 2016年 劉坤昶 Johnny. All rights reserved.
//

import UIKit

class MainBigCell: UITableViewCell {
    
    var classImage = UIImageView()
    var className = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        classImage.frame = CGRectMake(10, 10, 300, 200)
        classImage.contentMode = .ScaleAspectFill
        classImage.clipsToBounds = true
        classImage.layer.cornerRadius = 5
        contentView.addSubview(classImage)
        
        className.frame = CGRectMake(0, 0, 200, 15)
        className.font = UIFont.systemFontOfSize(15)
        contentView.addSubview(className)
        
        
        
        
    }

    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
