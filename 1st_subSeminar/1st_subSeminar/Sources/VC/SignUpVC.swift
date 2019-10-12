//
//  signupVC.swift
//  1st_subSeminar
//
//  Created by 조예은 on 12/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class signupVC: UIViewController, UITextFieldDelegate {

    @IBOutlet var idTF: UITextField!
    @IBOutlet var pwTF: UITextField!
    
    var idString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // id 작성 완료후 done 누르면 다음 TextField로 자동으로 넘어가기
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == self.idTF {
            
            textField.resignFirstResponder()
            
            self.pwTF.becomeFirstResponder()
        }
        
        textField.resignFirstResponder()
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender :Any?){
        
        let resultVC = segue.destination as! resultVC
        
        let id = idTF.text!
        
        idString = "Your ID is "
        idString += id
        
        resultVC.string = idString
        
    }
}
