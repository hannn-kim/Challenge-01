//
//  Filter.swift
//  Ch01
//
//  Created by Han on 3/27/26.
//

import SwiftUI
struct Filter: View {
    var ButtonName:  String = ""
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(ButtonName)
                .font(.body)
                .padding(.horizontal,24)
                .padding(.vertical,12)
                //isSelected시 필터 컬러 바뀌게 만드는 코드
                .background(isSelected ? Color.accentColor : Color(.systemGray6))
                .foregroundStyle(.black)
                .cornerRadius(40)
        }
        
    }
}

#Preview {
    HStack {
        Filter(ButtonName: "전체", isSelected: true, action: {})
    }
}
