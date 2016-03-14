//
//  ClassCell.swift
//  CustomTableView
//
//  Created by admin on 16/3/3.
//  Copyright © 2016年 MWJ. All rights reserved.
//

import UIKit

class ClassCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.brownColor()
        
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
