//
//  UICustomButton.swift
//  SwiftStudy
//
//  Created by Myeong chul Kim on 2018. 4. 5..
//  Copyright © 2018년 Myeong chul Kim. All rights reserved.
//

import Foundation
import UIKit

class UICustomButton : UIButton {

    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        
        self.backgroundColor = UIColor(hex: "#ff4b32")
        self.setTitleColor(UIColor.white, for: .normal)
        self.setTitleColor(UIColor.blue, for: .highlighted)
    }
    
}
