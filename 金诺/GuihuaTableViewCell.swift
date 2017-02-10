//
//  GuihuaTableViewCell.swift
//  Dexi
//
//  Created by jack on 17/2/10.
//  Copyright © 2017年 jack. All rights reserved.
//

import UIKit

class GuihuaTableViewCell: UITableViewCell {
    

    @IBOutlet weak var thumimage: UIImageView!
    @IBOutlet weak var timu: UILabel!
    @IBOutlet weak var leixing: UILabel!
    @IBOutlet weak var miaoshu: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
