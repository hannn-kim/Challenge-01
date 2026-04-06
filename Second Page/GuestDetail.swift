//
//  GuestDetail.swift
//  Ch01
//
//  Created by Han on 4/1/26.
//

import SwiftUI

struct GuestDetail: View {
    var image: String
    var guestName: String //게스트 이름
    var classTime: String //게스트 세션타임(오전/오후)
    var guestInterested : String
    var process: String //신청완료, 신청대기
    
    var body: some View {
        HStack {
            //프로필 이미지
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .padding(.trailing,6)
            
            //이름과 클래스타임
            VStack(alignment: .leading) {
                HStack {
                    Text(guestName)
                        .font(.body)
                        .bold()
                                
                    Text(classTime)
                        .font(.body)
                        .foregroundStyle(.gray)
                }
                //이름과 클래스타임
                HStack {
                    Text(guestInterested)
                }
                .font(.body)
                .foregroundStyle(.gray)
            }
            
            Spacer()
            
            //게스트 신청처리 상태
            Text(process)
                .padding(.leading,24)
                .foregroundStyle(process == "신청완료" ? .green : .red)
        }
        .padding(.horizontal,12)
        .padding(.vertical,20)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(.systemGray4)))
        
    }
}

#Preview {
    GuestDetail(image: "Profile2", guestName: "Hida", classTime: "오후반", guestInterested:"운동", process: "신청완료")
}
