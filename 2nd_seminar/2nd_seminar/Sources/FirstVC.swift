//
//  FirstVC.swift
//  2nd_seminar
//
//  Created by 조예은 on 12/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    var backColorStr: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let destination = segue.destination
        let button = sender as! UIButton
        
        destination.title = button.titleLabel?.text
        
    }
}
