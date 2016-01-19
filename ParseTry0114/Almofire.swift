//
//  Almofire.swift
//  ParseTry0114
//
//  Created by 劉坤昶 on 2016/1/19.
//  Copyright © 2016年 劉坤昶 Johnny. All rights reserved.
//

import Foundation
import Alamofire


class Networking
{
    func alamofireGET(url:String , result:(NSMutableArray?) ->())
    {
        var originalArray = NSMutableArray()
        
        Alamofire.request(.GET, url).responseJSON { response in
            
                if let JSON = response.result.value
                {
                    print("JSON: \(JSON)")
                    
                    originalArray = JSON["data"] as! NSMutableArray
                    
                    result( originalArray ?? [])
                    
                }
        }
    }
    
    
    
}