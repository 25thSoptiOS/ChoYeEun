//
//  FirstViewVC.swift
//  1st_subSeminar
//
//  Created by 조예은 on 12/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class FirstViewVC: UIViewController {

    @IBOutlet var segmentCtrl: UISegmentedControl!
    
    var stateStr: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC = segue.destination as! SecondViewVC
        let situation: String! = segmentCtrl.titleForSegment(at: segmentCtrl.selectedSegmentIndex)
        
        stateStr = situation
        stateStr += " 선택됨"
    }
}
