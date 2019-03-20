//
//  studentdataTableViewCell.swift
//  simple login
//
//  Created by Amrit on 2019-03-19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class studentdataTableViewCell: UITableViewCell {

    @IBOutlet weak var firstname: UILabel!
    @IBOutlet weak var lastname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
