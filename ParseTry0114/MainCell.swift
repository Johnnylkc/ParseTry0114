//
//  MainCell.swift
//  ParseTry0114
//
//  Created by 劉坤昶 on 2016/1/14.
//  Copyright © 2016年 劉坤昶 Johnny. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {

    var classImage = UIImageView()
    var className = UILabel()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
      
        classImage.frame = CGRectMake(10, 10, 120, 80)
        classImage.contentMode = .ScaleAspectFill
        classImage.clipsToBounds = true
        classImage.layer.cornerRadius = 5
        contentView.addSubview(classImage)
        
        className.frame = CGRectMake(140, 10, 220, 13)
        //className.backgroundColor = UIColor.grayColor()
        className.font = UIFont.systemFontOfSize(13)
        contentView.addSubview(className)
        
        
        
        
        
    }

    
    func autuLayout()
    {
        
        
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
