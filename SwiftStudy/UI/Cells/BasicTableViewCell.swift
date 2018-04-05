//
//  BasicTableViewCell.swift
//  SwiftStudy
//
//  Created by Myeong chul Kim on 2018. 3. 22..
//  Copyright © 2018년 Myeong chul Kim. All rights reserved.
//

import UIKit

class BasicTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
