//
//  NibCell.swift
//  CustomTableView
//
//  Created by admin on 16/3/3.
//  Copyright © 2016年 MWJ. All rights reserved.
//

import UIKit

class NibCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        super.awakeFromNib()
//        self.backgroundColor = UIColor.blueColor()
    }
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)!
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
