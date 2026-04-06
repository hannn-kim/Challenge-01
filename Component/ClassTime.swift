//
//  ClassTime.swift
//  Ch01
//
//  Created by Han on 3/27/26.
//
import SwiftUI

struct ClassTime: View {
    var body: some View {
        Text("오후반")
            .font(.system(size: 17))
            .fontWeight(.semibold)
            .foregroundColor(.gray)
            .padding(.horizontal, 16)
            .padding(.vertical, 2)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ClassTime()
}
