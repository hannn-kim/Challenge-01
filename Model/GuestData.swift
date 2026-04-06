//
//  GuestData.swift
//  Ch01
//
//  Created by Han on 4/1/26.
//

import Foundation
//2번째 상세페이지에 들어갈 더미데이터 양식
//2번째 상세페이지에 들어갈 더미데이터 양식
//2번째 상세페이지에 들어갈 더미데이터 양식

struct GuestData : Identifiable {
    var id = UUID()
    var guestName: String //게스트 이름
    var classTime: String //게스트 세션타임(오전/오후)
    var interested : String //게스트 관심사
    var process: String //신청완료, 신청대기
}
