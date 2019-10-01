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
    
    var like : Bool = false
    let heart = UIImage(systemName: "heart")
    let heartfill = UIImage(systemName: "heart.fill")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileIMG.image = #imageLiteral(resourceName: "malong")
        profileIMG.layer.cornerRadius = profileIMG.frame.height/2
        profileIMG.clipsToBounds = true
        profileID.text = "yeanny0_0"
        feedIMG.image = #imageLiteral(resourceName: "insta_image")
        
        
    }

    @IBAction func likeBtn(_ sender: Any) {
        if(!like){
            likeBtn.setImage(heart, for: .normal)
            likeBtn.tintColor = .black
            likeID.isHidden = true
            likeLB.isHidden = true
            like = true
        }else{
            likeBtn.setImage(heartfill, for: .normal)
            likeBtn.tintColor = .red
            likeID.isHidden = false
            likeID.text = "yeanny0_0"
            likeLB.isHidden = false
            like = false
        }
    }
    
}

