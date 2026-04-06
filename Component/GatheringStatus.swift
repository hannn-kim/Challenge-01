//
//  GatheringStatus.swift
//  Ch01
//
//  Created by Han on 3/30/26.
//

import SwiftUI

struct GatheringStatus: View {
    @State var status: Bool //Leeo
    
    var body: some View {
        if status == true {
            Text("모집중")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background {
                    Capsule()
                        .fill(Color.green.opacity(0.1))
                        .stroke(.green, lineWidth: 1)
                }
                .padding(.bottom,8)
        } else {
            Text("모집완료")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background {
                    Capsule()
                        .fill(Color.red.opacity(0.1))
                        .stroke(.red, lineWidth: 1)
                }
                .padding(.bottom,8)
        }
        
    }
}

#Preview {
    GatheringStatus(status: false)
}
