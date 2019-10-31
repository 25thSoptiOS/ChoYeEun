//
//  TwoVC.swift
//  2nd_seminar
//
//  Created by 조예은 on 12/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class TwoVC: UIViewController {

    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    var paramEmail: String = ""
    var paramUpdate: Bool = false
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultEmail.text = paramEmail
        resultUpdate.text = (self.paramUpdate == true ? "갱신 완료": "노 갱신")
        resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
    
    @IBAction func onBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
