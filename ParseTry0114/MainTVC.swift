//
//  MainTVC.swift
//  ParseTry0114
//
//  Created by 劉坤昶 on 2016/1/14.
//  Copyright © 2016年 劉坤昶 Johnny. All rights reserved.
//

import UIKit

class MainTVC: UITableViewController {
    
    var headerView = UIView()      //這是要放在桌子header的uiview
    var changeButton = UIButton()  //這是放在那個view上的按鈕
  
    var num:Int = 1                //我弄個數字預設是1 按了changeButton 就+1 藉此判斷能不能被二整除 去讀哪個細胞

    
    override func viewWillAppear(animated: Bool)  //為了保險起見 就算在這個桌子點了某個細胞 從細胞回前一頁num回到1
    {
        super.viewWillAppear(true)
        
        num = 1
        
        self.tableView.rowHeight = 250 //一執行這專案 首先呈現的細胞圖片比較大 我大略設250
        
    }
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //一樣 平常註冊一個細胞 今天註冊兩個
        self.tableView.registerClass(MainCell.self, forCellReuseIdentifier: "cell")
        self.tableView.registerClass(MainBigCell.self, forCellReuseIdentifier: "bigCell")

        
        changeButton.frame = CGRectMake(0, 0, 40, 30)
        changeButton.backgroundColor = UIColor.orangeColor()
        changeButton.setTitle("換", forState: .Normal)
        changeButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        changeButton.addTarget(self, action: "changeCell:", forControlEvents: .TouchUpInside)
        
        headerView.frame = CGRectMake(0, 0, 100, 30)
        headerView.backgroundColor = UIColor.whiteColor()
        self.tableView.tableHeaderView = headerView
        headerView.addSubview(changeButton)
        
        
        
    }
    
    func changeCell(sender:UIButton) //就在這裡 按這按鈕加一 判斷細胞高度要多少
    {
        ++num
        print("eeeee\(num)")
        
        
        if num % 2 == 0
        {
            self.tableView.rowHeight = 100
        }
        else if num % 2 != 0
        {
            self.tableView.rowHeight = 250

        }
        
        self.tableView.reloadData()

        
    }



    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        var cell:UITableViewCell?
        
        if num % 2 == 0
        {
            let firstCell =
            tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MainCell
            firstCell.classImage.image = UIImage(named: "14")
            firstCell.className.text = "1414141414"
            cell = firstCell
        }
        else if num % 2 != 0
        {
            let secondCell =
            tableView.dequeueReusableCellWithIdentifier("bigCell", forIndexPath: indexPath) as! MainBigCell
            secondCell.classImage.image = UIImage(named: "15")
            secondCell.className.text = "151515"
            cell = secondCell
        }
        
        return cell!
       
    }
    
        
        
 
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
