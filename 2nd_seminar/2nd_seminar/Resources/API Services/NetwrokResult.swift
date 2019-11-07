//
//  NetwrokResult.swift
//  2nd_seminar
//
//  Created by 조예은 on 02/11/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import Foundation

// 네트워크 상태의 5가지 결과 (성공, 요청 에러, 경로 에러, 서버 에러, 통신 실패)
enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
