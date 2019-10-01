//
//  ViewController.swift
//  Hello_world
//
//  Created by 조예은 on 28/09/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goNext(_ sender: Any) {
        self.firstLB.text = "SOPT!!"
        
    }
    
}

