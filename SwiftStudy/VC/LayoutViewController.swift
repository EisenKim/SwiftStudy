//
//  LayoutViewController.swift
//  SwiftStudy
//
//  Created by Myeong chul Kim on 2018. 3. 22..
//  Copyright © 2018년 Myeong chul Kim. All rights reserved.
//

import UIKit

class LayoutViewController: UIViewController {

    @IBOutlet weak var ivSample: UIImageView!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnPositionChange: UICustomButton!
    
    @IBOutlet weak var fIvSampleTop: NSLayoutConstraint!
    @IBOutlet weak var fIvSampleLeading: NSLayoutConstraint!
    @IBOutlet weak var fIvSampleTrailling: NSLayoutConstraint!
    @IBOutlet weak var fIvSampleAspect: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.ivSample.translatesAutoresizingMaskIntoConstraints = false
        self.initUI()
    }
    
    func initUI() {
        self.ivSample.layer.borderWidth = 1.0
        
        var sResult : String = ""
        let fSampleImageView_X_Axiz : CGFloat = self.ivSample.frame.origin.x
        let fSampleImageView_Y_Axiz : CGFloat = self.ivSample.frame.origin.y
        let fSampleImageView_Width : CGFloat = self.ivSample.frame.width
        let fSampleImageView_Height : CGFloat = self.ivSample.frame.height
        
        sResult = "[Info 1]\n x = \(fSampleImageView_X_Axiz), y = \(fSampleImageView_Y_Axiz), width = \(fSampleImageView_Width), height = \(fSampleImageView_Height)\n\n[Info 2]\n top = \(self.fIvSampleTop.constant), Lead = \(self.fIvSampleLeading.constant), Trail = \(self.fIvSampleTrailling.constant), Aspect = \(self.fIvSampleAspect.constant)"
        self.lblResult.numberOfLines = 0
        self.lblResult.text = sResult
        
        self.btnPositionChange.addTarget(self, action: #selector(self.doChangePosition), for: .touchUpInside)
        
    }
    
    var isChanged : Bool = false
    
    @objc func doChangePosition() {
        if isChanged {
            
            self.isChanged = false
        } else {
            
            self.isChanged = true
        }
        self.initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
