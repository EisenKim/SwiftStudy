//
//  ViewController.swift
//  SwiftStudy
//
//  Created by Myeong chul Kim on 2018. 3. 20..
//  Copyright © 2018년 Myeong chul Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblMain: UITableView!
    
    let arrTitles = ["Layout", "Stack Animaion", "Dynamic Label"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initUI() {
        
        self.tblMain.dataSource = self
        self.tblMain.delegate = self
        
        self.tblMain.register(UINib(nibName:"BasicTableViewCell", bundle:nil), forCellReuseIdentifier: "BasicTableViewCell")
        self.tblMain.separatorInset = .zero
        self.tblMain.tableFooterView = UIView(frame: .zero)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTitles.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 62.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicTableViewCell", for: indexPath) as! BasicTableViewCell
        
        cell.lblTitle.text = self.arrTitles[indexPath.row]
        cell.selectionStyle = .none
        return cell //UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sbMain = UIStoryboard(name: "Main", bundle: nil)
        switch (indexPath.row) {
        case 0:
            let controller = sbMain.instantiateViewController(withIdentifier: "LayoutViewController") as! LayoutViewController
            self.navigationController?.pushViewController(controller, animated: true)
            break
        case 1:
            break
        case 2:
            let controller = sbMain.instantiateViewController(withIdentifier: "DynamicLabelViewController") as! DynamicLabelViewController
            self.navigationController?.pushViewController(controller, animated: true)
            break
        default:
            break
        }
        
    }
    
}

