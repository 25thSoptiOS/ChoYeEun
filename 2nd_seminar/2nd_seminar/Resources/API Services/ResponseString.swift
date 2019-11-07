//
//  ResponseString.swift
//  2nd_seminar
//
//  Created by 조예은 on 02/11/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import Foundation

// MARK: - ResponseString
// 성공했을 때 response body
struct ResponseString: Codable {
    let success: Bool
    let message: String
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let userIdx: Int
    let id, password, name, phone: String
}
