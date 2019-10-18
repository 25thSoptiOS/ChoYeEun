//
//  CalculatorVC.swift
//  2nd_assignment
//
//  Created by 조예은 on 18/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet var numLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numLB.text = ""
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        numLB.text = numLB.text! + String(sender.tag-1)
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        numLB.text = ""
    }
    
    
}
