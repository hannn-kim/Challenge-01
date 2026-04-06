//
//  Guest.swift
//  Ch01
//
//  Created by Han on 3/31/26.
//
import Foundation
//메인페이지에 들어가는 내용
//메인페이지에 들어가는 내용
//메인페이지에 들어가는 내용

struct Guest: Identifiable {
    var id = UUID() //id가 아이덴티파이어블하다(모두에게 id를 하나씩 준다. 주민등록번호를 주는 것처럼)
    var prifleImage: String
}
