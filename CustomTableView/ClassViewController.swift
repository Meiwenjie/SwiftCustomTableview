//
//  ClassViewController.swift
//  CustomTableView
//
//  Created by admin on 16/3/8.
//  Copyright © 2016年 MWJ. All rights reserved.
//

import UIKit

class ClassViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var myTableView = UITableView()
    var cellCache = Dictionary<String,NSObject>()
    let Identifier = "cellIdentifier"
    var DataSource = ["何谓仁？\n仁者，仁义也。指在与另一个人相处时，能做到融洽和谐，做到关照，即为仁。\n仁者，易也。凡事不能光想着自己，多设身处地为别人着想，为别人考虑，做事为人为己，即为仁。儒家重仁，仁者，爱人也。简言之，能爱人即为仁。","何谓义？\n义者，人字出头，加一点。在别人有难时出手出头，能舍，帮人一把，即为义。\n古字义，离不开我，用我身上的王去辨别是非，在人家需要时，及时出手，帮人家一两下，即为义。","何谓礼？\n礼者，示人以曲也。己弯腰则人高，对他人即为有礼。\n因此敬人即为礼。古之礼，示人如弯曲的谷物也。只有结满谷物的谷穗才会弯下头，礼之精要在于曲。","何谓智？\n智者，知道日常的东西也。把平时生活中的东西琢磨透了，就叫智。\n观一叶而知秋，道不远人即为此。","何谓信？\n信者，人言也。远古时没有纸，经验技能均靠言传身教。那时的人纯真朴素，没有那么多花花肠子，故而真实可靠。\n别人用生命或鲜血换来的对周围世界的认识，不信是要吃亏的。以此估计，信者，实为人类之言，是人类从普遍经验中总结出来的东西，当然不会骗人。","仁是仁爱之心；义是处事得宜和合理；礼是人际关系的正常规范如礼仪、礼制、礼法；智(古书或作「知」)是明辨是非；信是言无反覆、诚实不欺。孟子以仁义礼智为四端：「恻隐之心，仁之端也；羞恶之心，义之端也；辞让之心，礼之端也；是非之心，智之端也。」对他人遭遇的不幸生起恻隐之心即是仁心。羞恶之心是对自己做出不合宜不合理的事感到羞愧，对别人犯此则厌恶。辞让是指不接受违反礼制的好处。是非之心则需要智慧来支撑。"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.blueColor()
        myTableView.frame = self.view.bounds;
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.estimatedRowHeight = 100
        myTableView.rowHeight = UITableViewAutomaticDimension
        self.view.addSubview(myTableView)
        
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSource.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = cellCache[String(indexPath.row)] as? ClassDetailCell
        if(cell == nil){
            cell = self.getCellFromIndexPath(indexPath)
        }
        
        return cell!
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
       
        let content = DataSource[indexPath.row]
        let height =  ClassDetailCell.getCellHeight(content, fontSize: 14, width: UIScreen.mainScreen().bounds.width - 210)
        let cell = self.getCellFromIndexPath(indexPath)
        cellCache[String(indexPath.row)] = cell
        cell.contentLabel.frame = CGRectMake(200, 10,  UIScreen.mainScreen().bounds.width - 220, height)
        
        return height
        
    }
    
    func getCellFromIndexPath(indexPath:NSIndexPath)->ClassDetailCell{
        
        var cell = self.myTableView.dequeueReusableCellWithIdentifier(Identifier) as? ClassDetailCell
        if(cell == nil){
            cell = ClassDetailCell(style:.Subtitle, reuseIdentifier: Identifier)
        }
        let content = DataSource[indexPath.row]
        cell?.contentLabel.text = content
        
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
