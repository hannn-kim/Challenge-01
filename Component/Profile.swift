//
//  Profile.swift
//  Ch01
//
//  Created by Han on 3/27/26.
//
import SwiftUI

struct Profile: View {
    private let imageName: String = "profile_image"
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
        }
    }
}

#Preview {
    Profile()
}
