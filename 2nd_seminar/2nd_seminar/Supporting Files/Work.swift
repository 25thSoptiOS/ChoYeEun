//
//  Work.swift
//  2nd_seminar
//
//  Created by 조예은 on 31/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import Foundation
import UIKit

struct Work {
    var workImg: UIImage?
    
    init(workName: String) {
        self.workImg = UIImage(named: workName)
    }
}
