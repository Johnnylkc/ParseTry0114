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
        
        classImage.frame = CGRectMake(10, 10, 355, 200)
        classImage.contentMode = .ScaleAspectFill
        classImage.clipsToBounds = true
        classImage.layer.cornerRadius = 5
        contentView.addSubview(classImage)
        
        className.frame = CGRectMake(0, 0, 150, 15)
        //className.backgroundColor = UIColor.orangeColor()
        className.center = CGPointMake(self.contentView.frame.size.width/2, 220)
        className.textAlignment = .Center
        
        contentView.addSubview(className)
        
        autuLayout()
        
    }
    
    
    func autuLayout()
    {
        classImage.translatesAutoresizingMaskIntoConstraints = (false)
        className.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["classImage":classImage,"className":className]
        
        //classImage
        let classImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[classImage]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.contentView.addConstraints(classImageH)
        
        let classImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[classImage(200)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.contentView.addConstraints(classImageV)
        
        
        //className
        let classNameH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[className]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.contentView.addConstraints(classNameH)
        
        let classNameV = NSLayoutConstraint.constraintsWithVisualFormat("V:[classImage]-10-[className(15)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
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
