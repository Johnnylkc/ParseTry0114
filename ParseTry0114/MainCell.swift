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
        
        className.frame = CGRectMake(140, 10, 220, 15)
        //className.backgroundColor = UIColor.grayColor()
        className.font = UIFont.systemFontOfSize(15)
        contentView.addSubview(className)
        
        
        
        autoLayout()

        
    }

    
    func autoLayout()
    {
        classImage.translatesAutoresizingMaskIntoConstraints = (false)
        className.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["classImage":classImage,"className":className]
        
        //classImage
        let classImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[classImage(120)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.contentView.addConstraints(classImageH)
        
        let classImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[classImage]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.contentView.addConstraints(classImageV)
        
        //className
        let classNameH = NSLayoutConstraint.constraintsWithVisualFormat("H:[classImage]-10-[className]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.contentView.addConstraints(classNameH)
        
        let classNameV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[className(15)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.contentView.addConstraints(classNameV)
        
        
        
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
