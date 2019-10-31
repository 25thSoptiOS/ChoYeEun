//
//  UIViewcontroller+AppDelegate.swift
//  2nd_seminar
//
//  Created by 조예은 on 26/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
