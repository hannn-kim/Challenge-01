//
//  FilterBar.swift
//  Ch01
//
//  Created by Han on 3/30/26.
//

import SwiftUI

struct FilterBar: View {
    //어떤 필터가 선택되었는지 저장하는 변수
    @State private var selectedFilter: String = "전체"
    
    var filterOptions = ["전체","식사/술", "운동", "공부"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(filterOptions, id: \.self) { name in
                    Filter(
                        ButtonName: name,
                        isSelected: selectedFilter == name,
                        action: {
                            selectedFilter = name
                        }
                    )
                }
            }
            .padding(.top,12)
            .padding(.bottom,4)
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    FilterBar()
}
