//
//  resultVC.swift
//  1st_subSeminar
//
//  Created by 조예은 on 12/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class resultVC: UIViewController {

    @IBOutlet var id: UILabel!
    var string: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        id.text = string
    }

}
