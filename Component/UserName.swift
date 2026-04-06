//
//  name.swift
//  Ch01
//
//  Created by Han on 3/27/26.
//
import SwiftUI

struct UserName: View {
    private let name: String = "Han"
    
    var body: some View {
        Text(name)
            .font(.system(size: 25, weight: .semibold))
            .padding(.horizontal, 16)
            .padding(.vertical, 2)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    UserName()
}
