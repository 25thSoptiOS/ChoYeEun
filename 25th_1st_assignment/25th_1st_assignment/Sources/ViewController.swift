//
//  ViewController.swift
//  25th_1st_seminar
//
//  Created by 조예은 on 01/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var profileIMG: UIImageView!
    @IBOutlet var profileID: UILabel!
    @IBOutlet var feedIMG: UIImageView!
    @IBOutlet var likeBtn: UIButton!
    @IBOutlet var likeID: UILabel!
    @IBOutlet var likeLB: UILabel!
    
    //좋아요 버튼 : 시스템 이미지 설정
    let heart = UIImage(systemName: "heart")
    let heartfill = UIImage(systemName: "heart.fill")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //프로필 이미지, 아이디, 피드 이미지 설정
        profileIMG.image = #imageLiteral(resourceName: "malong")
        profileIMG.layer.cornerRadius = profileIMG.frame.height/2
        profileIMG.clipsToBounds = true
        profileID.text = "yeanny0_0"
        feedIMG.image = #imageLiteral(resourceName: "insta_image")
        
        
    }
    //좋아요 버튼 액션
    @IBAction func likeBtn(_ sender: Any) {
        
        let btn = sender as! UIButton
        btn.isSelected = !btn.isSelected
        
        if(btn.isSelected){
            likeBtn.setImage(heart, for: .normal)
            likeBtn.tintColor = .black
            likeID.isHidden = true
            likeLB.isHidden = true
        }else{
            likeBtn.setImage(heartfill, for: .normal)
            likeBtn.tintColor = .red
            likeID.isHidden = false
            likeID.text = "yeanny0_0"
            likeLB.isHidden = false
        }
    }
    
}

