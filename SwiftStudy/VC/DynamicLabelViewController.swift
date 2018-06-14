//
//  DynamicLabelViewController.swift
//  SwiftStudy
//
//  Created by Myeong chul Kim on 12/06/2018.
//  Copyright © 2018 Myeong chul Kim. All rights reserved.
//

import UIKit

class DynamicLabelViewController: UIViewController {

    @IBOutlet weak var lblDynamic: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.lblDynamic.frame = CGRect.zero
        self.lblDynamic.backgroundColor = UIColor.cyan
        self.lblDynamic.sizeToFit()
        
        var labelWidth = self.lblDynamic.frame.minX
        print("Label Width = \(labelWidth)")
        
        self.lblDynamic.text = "Hello World, DasEisen"
        labelWidth = self.lblDynamic.frame.minX
        print("Label Width = \(labelWidth)")
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
