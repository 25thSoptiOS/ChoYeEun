//
//  SignUpVC.swift
//  2nd_seminar
//
//  Created by 조예은 on 02/11/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var idTF: UITextField!
    @IBOutlet var pwTF: UITextField!
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var phoneTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func goSignUp(_ sender: UIButton) {
        guard let id = idTF.text else { return }
        guard let pwd = pwTF.text else { return }
        guard let name = nameTF.text else { return }
        guard let phone = phoneTF.text else { return }
        
        SignUpService.shared.signup(id, pwd, name, phone) {
            data in
            
            switch data {
                
            case .success(let data):

                // DataClass 에서 받은 유저 정보 반환
                //let user_data = data as! DataClass

                // 사용자의 토큰, 이름, 이메일, 전화번호 받아오기
                // 비밀번호는 안 받아와도 됨
//                UserDefaults.standard.set(user_data.userIdx, forKey: "token")
//                UserDefaults.standard.set(user_data.name, forKey: "name")
//                UserDefaults.standard.set(user_data.phone, forKey: "phone")
                
                self.dismiss(animated: true, completion: nil)
                
            case .requestErr(let message):
                //self.simpleAlert(title: "로그인 실패", message: "\(message)")
                print(".requestErr")
                
            case .pathErr:
                print(".pathErr")
                
            case .serverErr:
                print(".serverErr")
                
            case .networkFail:
                //self.simpleAlert(title: "로그인 실패", message: "네트워크 상태를 확인해주세요.")
                print(".networkFail")
            }
        }
    }
    
}
