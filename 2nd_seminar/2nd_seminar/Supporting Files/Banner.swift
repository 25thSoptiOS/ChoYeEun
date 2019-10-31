//
//  Banner.swift
//  2nd_seminar
//
//  Created by 조예은 on 26/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import Foundation
import UIKit

struct Banner {
    var bannerImg: UIImage?
    
    init(bannerName: String){
        self.bannerImg = UIImage(named: bannerName)
    }
}
