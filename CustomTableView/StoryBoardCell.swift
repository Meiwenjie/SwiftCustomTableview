//
//  StoryBoardCell.swift
//  CustomTableView
//
//  Created by admin on 16/3/8.
//  Copyright © 2016年 MWJ. All rights reserved.
//

import UIKit

class StoryBoardCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.whiteColor()
    }
 
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        self.backgroundColor = UIColor.brownColor()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)!
//        fatalError("init(coder:) has not been implemented")
//    }
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    
    //返回cell的高度
    func heightForCell()->(CGFloat){
        //刷新布局
        self.layoutIfNeeded()
        //返回最最下方控件的最大Y值，就是高度啦
        return  CGRectGetMaxY(contentView.frame)
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
