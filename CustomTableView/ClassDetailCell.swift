//
//  ClassDetailCell.swift
//  CustomTableView
//
//  Created by admin on 16/3/8.
//  Copyright © 2016年 MWJ. All rights reserved.
//

import UIKit

class ClassDetailCell: UITableViewCell {
    
    var imgView = UIImageView()
    var contentLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.brownColor()
        //        imgView = UIImageView(frame: CGRectMake(10, 10, 180, 200))
        imgView.frame = CGRectMake(10, 10, 180, 200)
        imgView.image = UIImage(named: "IMG_1517")
        self.contentView .addSubview(imgView)
        
        contentLabel.frame = CGRectMake(200, 10, UIScreen.mainScreen().bounds.width - 220, 200)
        contentLabel.font = UIFont.systemFontOfSize(14)
        contentLabel.numberOfLines = 0
        self.contentView.addSubview(contentLabel)
        
    }
    
//    func refreshDataWithString(content:String){
//    
//        contentLabel.text = content
//        let height =  ClassDetailCell.getCellHeight(content, fontSize: 14, width: UIScreen.mainScreen().bounds.width - 220)
//        contentLabel.frame = CGRectMake(200, 10,  UIScreen.mainScreen().bounds.width - 220, height)
//    }
    
    class func getCellHeight(content:String,fontSize:CGFloat,width:CGFloat)-> CGFloat{
    
        let font = UIFont.systemFontOfSize(fontSize)
        
        let size = CGSizeMake(width,CGFloat.max)
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        paragraphStyle.lineBreakMode = .ByWordWrapping;
        
        let attributes = [NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle.copy()]
        
        let text = content
        
        let rect = text.boundingRectWithSize(size, options:.UsesLineFragmentOrigin, attributes: attributes, context:nil)
        
        var height = rect.size.height + 30
        
        if(height <= 220){
            height = 220
        }
        return height
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        fatalError("init(coder:) has not been implemented")
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    
    //    添加如下构造函数 (普通初始化)
    //    override  init() { }
    //    如果控制器需要通过xib加载，则需要添加
    //    required init(coder aDecoder: NSCoder) {}

}
