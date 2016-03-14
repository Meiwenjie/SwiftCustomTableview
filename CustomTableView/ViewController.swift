//
//  ViewController.swift
//  CustomTableView
//
//  Created by admin on 16/3/3.
//  Copyright © 2016年 MWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

    private let StoryBoardCellIdentifier = "StoryBoardCellIdentifier"
    private let SystemCellIdentifier = "SystemCellIdentifier"
    private let ClassCellIdentifier = "ClassCellIdentifier"
    private let NibCellIdentifier = "NibCellIdentifier"
    
    @IBOutlet weak var mTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // self.tableview.separatorStyle = UITableViewCellSeparatorStyle.None
        //注册Nib cell
        self.mTableview.registerNib(UINib(nibName: "NibCell", bundle: nil),forCellReuseIdentifier:NibCellIdentifier)
        //注册 class cell
        self.mTableview.registerClass(ClassCell.self, forCellReuseIdentifier: ClassCellIdentifier)
        
//        self.mTableview.estimatedRowHeight = 68.0
//        self.mTableview.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
//        var cell = tableView.dequeueReusableCellWithIdentifier(StoryBoardCellIdentifier)
//        if(cell == nil){
//            cell = UITableViewCell(style: .Default, reuseIdentifier: StoryBoardCellIdentifier)
//        }
//        cell?.textLabel?.text = String("StoryBoard 动态布局")
//        return cell!

        
        /**
        *  StoryBoard 中 拖进去的 cell, 需要在 Identifier 属性赋值’Identifier’, 当tableView需要循环使用该cell的时候 Identifier 就是’Identifier’
        */
        if(indexPath.row < 3){
            var cell = tableView.dequeueReusableCellWithIdentifier(StoryBoardCellIdentifier)
            if(cell == nil){
                cell = UITableViewCell(style: .Default, reuseIdentifier: StoryBoardCellIdentifier)
            }
            cell?.textLabel?.text = String("StoryBoard 动态布局")
            cell?.backgroundColor = UIColor.redColor()
            return cell!
        }
        /**
        *  Class 调用 init(style: UITableViewCellStyle, reuseIdentifier: String?)
        */
        else if(indexPath.row >= 3 && indexPath.row < 5){
            
            let cell = tableView.dequeueReusableCellWithIdentifier(ClassCellIdentifier)
            cell!.textLabel!.text = String("Class 动态布局")
            
            return cell!
        }
        /**
        *  Nib注册, 调用的时候会调用自定义cell中的  awakeFromNib  方法
        */
        else if(indexPath.row >= 5 && indexPath.row < 7){
            
            let cell = tableView.dequeueReusableCellWithIdentifier(NibCellIdentifier)
            cell!.textLabel!.text = String("Nib Cell")
            
            return cell!
        }
        /**
        *  System
        */
        else if(indexPath.row >= 7 && indexPath.row < 10){
            
            var cell = tableView.dequeueReusableCellWithIdentifier(SystemCellIdentifier)
            if(cell == nil){
                
                cell = UITableViewCell(style: .Subtitle, reuseIdentifier: SystemCellIdentifier)
            }
            cell?.textLabel?.text = String("System Cell")
            cell?.backgroundColor = UIColor.grayColor()
            return cell!
        }
        
        return UITableViewCell(style: .Default, reuseIdentifier: "no")
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("indexPath.row = \(indexPath.row)")
        /**
        *  Class
        */
        if(indexPath.row >= 3 && indexPath.row < 5){
        
            let vc = ClassViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}

