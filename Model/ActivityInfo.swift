//
//  ActivityInfo.swift
//  Ch01
//
//  Created by Han on 3/31/26.
//

import Foundation

struct ActivityInfo: Identifiable {
    var id = UUID()
    var title : String
    var place : String
    var time : String
    var status: Bool
    var hosts: Host
    var guests: [Guest]
    var guestCount: String
}
