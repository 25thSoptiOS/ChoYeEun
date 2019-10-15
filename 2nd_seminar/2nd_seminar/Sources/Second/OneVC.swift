//
//  OneVC.swift
//  2nd_seminar
//
//  Created by 조예은 on 12/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class OneVC: UIViewController {

    @IBOutlet var emailTF: UITextField!
    @IBOutlet var refreshSW: UISwitch!
    @IBOutlet var refreshST: UIStepper!
    
    @IBOutlet var refreshLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        
        guard let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "TwoVC") as? TwoVC
            else { return}
        
        resultVC.paramEmail = emailTF.text!
        resultVC.paramUpdate = refreshSW.isOn
        resultVC.paramInterval = refreshST.value
        
        self.present(resultVC, animated: true)
    }
    
    @IBAction func refreshStepper(_ sender: Any) {
    }
}
